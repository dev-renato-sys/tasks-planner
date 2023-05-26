import 'package:flutter/material.dart';
import 'package:tasks_planner/helpers/hex_color.dart';

class AppButtonSignin extends StatelessWidget {
  final String label;
  final Widget icon;
  const AppButtonSignin(this.label, {super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1.5, color: HexColor.fromHex('#2FD1C5')),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              width: 5.0,
            ),
            Text(
              label,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}
