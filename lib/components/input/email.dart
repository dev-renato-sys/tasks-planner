import 'package:flutter/material.dart';
import 'package:tasks_planner/helpers/hex_color.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'd.che.nevsky@gmail.com',
          // prefixIcon: Icon(Icons.email, color: HexColor.fromHex('#2FD1C5'),),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: HexColor.fromHex('#C4D7FF'),
              ),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: HexColor.fromHex('#C4D7FF')),
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: HexColor.fromHex('#C4D7FF')),
              borderRadius: BorderRadius.circular(8))),
    );
  }
}
