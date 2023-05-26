import 'package:flutter/material.dart';
import 'package:tasks_planner/helpers/hex_color.dart';

class EducationalButton extends StatelessWidget {
  const EducationalButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shadowColor: const Color.fromRGBO(28, 37, 44, 0.05),
          foregroundColor: Colors.grey,
          backgroundColor: Colors.white,
          alignment: Alignment.centerLeft,
          side: BorderSide(color: HexColor.fromHex('#FDD563'),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))
        ),
        onPressed: () {},
        icon: Image.asset('assets/img/7_9_years.png'),
        label: Text(
          'Year 7-9',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: HexColor.fromHex('#585A66')),
        ));
  }
}
