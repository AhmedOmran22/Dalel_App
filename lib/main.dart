import 'package:dalel/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DalelApp());
}

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
