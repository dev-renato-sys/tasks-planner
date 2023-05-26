import 'package:flutter/material.dart';

class AppButtonPrimary extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const AppButtonPrimary(this.text, {super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: Size.infinite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // <-- Radius
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w700),
        ));
  }
}
