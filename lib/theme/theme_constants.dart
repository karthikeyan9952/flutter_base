import 'package:flutter_base/theme/pallete.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: "Poppins",
  brightness: Brightness.light,
  primaryColor: Pallete.primary,
  scaffoldBackgroundColor: Pallete.light,
  appBarTheme: const AppBarTheme(backgroundColor: Pallete.light),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Pallete.primary),
          elevation: MaterialStateProperty.all(0))),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          side: MaterialStateProperty.all(
              const BorderSide(color: Pallete.primary)))),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 0, backgroundColor: Pallete.primary),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Pallete.primary),
          overlayColor:
              MaterialStateProperty.all(Pallete.primary.withOpacity(.1)))),
  canvasColor: Pallete.light,
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Pallete.primary,
      onPrimary: Colors.white,
      secondary: Pallete.secondary,
      onSecondary: Pallete.dark,
      error: Pallete.danger,
      onError: Colors.white,
      background: Pallete.light,
      onBackground: Pallete.dark,
      surface: Pallete.light,
      onSurface: Pallete.dark),
  dialogBackgroundColor: Colors.white,
);

ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Pallete.primary,
    scaffoldBackgroundColor: Pallete.dark,
    appBarTheme: const AppBarTheme(backgroundColor: Pallete.dark),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(Pallete.primary),
            elevation: MaterialStateProperty.all(0))),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            side: MaterialStateProperty.all(
                const BorderSide(color: Pallete.primary)))),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Pallete.primary),
            overlayColor:
                MaterialStateProperty.all(Pallete.primary.withOpacity(.1)))),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 0, backgroundColor: Pallete.primary),
    dialogBackgroundColor: Pallete.dark,
    dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.all(12),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Pallete.primary),
                borderRadius: BorderRadius.circular(10)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Pallete.danger),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Pallete.muted),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder:
                OutlineInputBorder(borderSide: const BorderSide(color: Pallete.primary), borderRadius: BorderRadius.circular(10))))
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //     style: ButtonStyle(
    //         padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
    //             EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0)),
    //         shape: MaterialStateProperty.all<OutlinedBorder>(
    //             RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(20.0))),
    //         backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
    //         foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
    //         overlayColor: MaterialStateProperty.all<Color>(Colors.black26))),
    );
