import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: GoogleFonts.urbanist(
      color: const Color.fromARGB(221, 121, 120, 120),
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: GoogleFonts.urbanist(
      color: const Color.fromARGB(115, 156, 156, 156),
      fontSize: 17,
      fontWeight: FontWeight.w500,
    ),
    displayLarge: GoogleFonts.urbanist(
      color: Colors.black87,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: GoogleFonts.urbanist(
      color: const Color.fromARGB(135, 0, 0, 0),
      fontWeight: FontWeight.w300,
      fontSize: 12,
    ),
    titleMedium: GoogleFonts.urbanist(
      color: const Color.fromARGB(95, 0, 0, 0),
      fontWeight: FontWeight.w600,
      fontSize: 17,
    ),
    titleLarge: GoogleFonts.urbanist(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontSize: 25,
    ),
    bodySmall: GoogleFonts.urbanist(
      textStyle: TextStyle(
        fontSize: 15,
        color: Colors.black.withOpacity(0.4),
        fontWeight: FontWeight.w100,
      ),
    ),
    bodyMedium: GoogleFonts.urbanist(
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(136, 80, 76, 76),
      ),
    ),
    bodyLarge: GoogleFonts.urbanist(
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
      displayMedium: GoogleFonts.cabin(
        color: const Color.fromARGB(221, 121, 120, 120),
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: GoogleFonts.cabin(
        color: const Color.fromARGB(115, 156, 156, 156),
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      displayLarge: GoogleFonts.cabin(
        color: Colors.black87,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: GoogleFonts.cabin(
        color: Colors.white,
        fontWeight: FontWeight.w300,
      ),
      titleMedium: GoogleFonts.cabin(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: GoogleFonts.cabin(
        color: Colors.white,
        fontWeight: FontWeight.w800,
      ));
}
