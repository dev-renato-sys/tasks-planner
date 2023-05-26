import 'package:flutter/material.dart';
import 'package:tasks_planner/components/buttons/button.dart';
import 'package:tasks_planner/helpers/hex_color.dart';

class PreviewPage extends StatefulWidget {
  const PreviewPage({super.key});

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    double phoneWidth = MediaQuery.of(context).size.width;
    double phoneHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  EdgeInsets.only(top: phoneWidth > phoneHeight ? 60.0 : 160.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [Image.asset('assets/img/objects.png')],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 1, color: HexColor.fromHex('#E4EDFF')),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                height: phoneWidth > phoneHeight
                    ? phoneHeight * 1.15
                    : phoneHeight / 1.85,
                width: phoneWidth,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 80.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Task Manager',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 60.0),
                        child: Text(
                          'Create unique emotional story that describes better words',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 120.0,
                      ),
                      Expanded(
                          child: AppButtonPrimary(
                        'Get Started',
                        onPressed: () =>
                            Navigator.pushNamed(context, '/education-level'),
                      ))
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
