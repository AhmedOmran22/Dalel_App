import 'package:dalel/core/cache/casch_helper.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'firebase_options.dart';

void main() async {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await getIt.get<CacheHelper>().init();
  runApp(const DalelApp());
}

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
