import 'package:flutter/material.dart';
import 'package:tasks_planner/pages/sign_in_page.dart';
import 'package:tasks_planner/routes/routes.dart';
import 'package:tasks_planner/theme/light.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      theme: lightThemeData,
      home: const Scaffold(
        body: SingleChildScrollView(
          child: SignInPage(),
        ),
      ),
    );
  }
}
