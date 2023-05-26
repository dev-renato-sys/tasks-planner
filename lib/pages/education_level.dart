import 'package:flutter/material.dart';
import 'package:tasks_planner/components/buttons/educational_button.dart';

class EducationLevelPage extends StatefulWidget {
  const EducationLevelPage({super.key});

  @override
  State<EducationLevelPage> createState() => _EducationLevelPageState();
}

class _EducationLevelPageState extends State<EducationLevelPage> {
  @override
  Widget build(BuildContext context) {
    double phoneWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              'Education level',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12,),
            const Text('Create a unique emotional story that describes better than words'),
            const SizedBox(height: 24.0,),
            SizedBox(width: phoneWidth, height: 88.0, child: EducationalButton(),),
          ]),
        ),
      )),
    );
  }
}
