import 'dart:developer';

import 'package:dalel/features/auth/presentation/manager/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      emit(SignUpLoading());
      // final credential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailure(errMessage: 'The password provided is too weak.'));
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailure(
            errMessage: 'The account already exists for that email'));
        log('The account already exists for that email.');
      } else if (e.code == 'network-request-failed') {
        emit(SignUpFailure(errMessage: 'chekck your internet connection'));

        log('network-request-failed');
      } else {
        log(e.toString());
      }
    } catch (e) {
      log(e.toString());
      emit(SignUpFailure(errMessage: e.toString()));
    }
  }
}
