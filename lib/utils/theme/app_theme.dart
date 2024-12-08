import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static lightTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primarySwatch: Colors.red,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.dmSans(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      chipTheme: ChipThemeData(
          side: const BorderSide(color: Colors.white),
          padding: EdgeInsets.zero,
          labelPadding: const EdgeInsets.symmetric(horizontal: 5),
          backgroundColor: AppColors.primaryColor.withOpacity(0.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      textTheme: GoogleFonts.dmSansTextTheme().copyWith(
        displayLarge: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 16,
        ),
        bodyMedium: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 14,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        textTheme: ButtonTextTheme.normal,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: AppColors.primaryColor))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              textStyle: const TextStyle(color: Colors.white))),
      inputDecorationTheme: InputDecorationTheme(
        border: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(80, 140, 137, 137))),
        enabledBorder: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(80, 140, 137, 137))),
        focusedBorder: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(width: 1, color: AppColors.primaryColor)),
        errorBorder: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(width: 1, color: Colors.red)),
        filled: true,
        fillColor: Colors.transparent,
      ),
      iconTheme: IconThemeData(
        color: AppColors.primaryColor,
      ),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(Colors.red),
        ),
      ),
    );
  }

  static darkTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primarySwatch: Colors.red,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.dmSans(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: GoogleFonts.dmSansTextTheme().copyWith(
        displayLarge: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 20,
        ),
        bodyMedium: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 14,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              textStyle: const TextStyle(color: Colors.white))),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: AppColors.primaryColor))),
      inputDecorationTheme: InputDecorationTheme(
        border: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(width: 1, color: Colors.grey)),
        enabledBorder: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(width: 1, color: Colors.grey)),
        focusedBorder: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(width: 1, color: AppColors.primaryColor)),
        errorBorder: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(width: 1, color: Colors.red)),
        filled: true,
        fillColor: Colors.transparent,
      ),
    );
  }
}
