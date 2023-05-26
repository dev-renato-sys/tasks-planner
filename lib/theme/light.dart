import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasks_planner/helpers/hex_color.dart';

final ThemeData lightThemeData = ThemeData(
  scaffoldBackgroundColor: HexColor.fromHex('#f5fbff'),
  textTheme: GoogleFonts.almaraiTextTheme().copyWith(
      titleLarge: TextStyle(
          color: HexColor.fromHex('#00394C'),
          fontSize: 30.0,
          fontWeight: FontWeight.w700), ),
  primarySwatch: HexColor.createMaterialColor(HexColor.fromHex('#2FD1C5')),
);
