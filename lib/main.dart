
import 'package:dalel/core/cache/casch_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/dalel_app.dart';
import 'core/functions/auth_state_chanhes.dart';
import 'firebase_options.dart';

void main() async {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await getIt.get<CacheHelper>().init();
  authStateChanges();
  runApp(const DalelApp());
}


