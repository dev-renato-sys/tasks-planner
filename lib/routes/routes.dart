import 'package:flutter/cupertino.dart';
import 'package:tasks_planner/pages/education_level.dart';
import 'package:tasks_planner/pages/sign_in_page.dart';
import 'package:tasks_planner/pages/preview_page.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/signin': (BuildContext context) {
    return const SignInPage();
  },
  '/preview': (BuildContext context) {
    return const PreviewPage();
  },
  '/education-level': (BuildContext context) {
    return const EducationLevelPage();
  }
};
