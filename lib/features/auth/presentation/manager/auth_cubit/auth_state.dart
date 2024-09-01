abstract class AuthState {}

class AuthInitial extends AuthState {}

class SignUpLoading extends AuthState {}

class SignUpSuccess extends AuthState {}

class SignUpFailure extends AuthState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}
