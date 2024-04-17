import 'package:flutter_base/theme/palette.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: "Poppins",
  brightness: Brightness.light,
  primaryColor: Palette.primary,
  scaffoldBackgroundColor: Palette.light,
  appBarTheme: const AppBarTheme(backgroundColor: Palette.light),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Palette.primary),
          elevation: MaterialStateProperty.all(0))),
  filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(Palette.secondary),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  )),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 0, backgroundColor: Palette.primary),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Palette.primary),
          overlayColor:
              MaterialStateProperty.all(Palette.primary.withOpacity(.1)))),
  canvasColor: Palette.light,
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Palette.primary,
      onPrimary: Colors.white,
      secondary: Palette.secondary,
      onSecondary: Palette.dark,
      error: Palette.danger,
      onError: Colors.white,
      background: Palette.light,
      onBackground: Palette.dark,
      surface: Palette.light,
      onSurface: Palette.dark),
  dialogBackgroundColor: Colors.white,
);

ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Palette.primary,
    scaffoldBackgroundColor: Palette.dark,
    appBarTheme: const AppBarTheme(backgroundColor: Palette.dark),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(Palette.primary),
            elevation: MaterialStateProperty.all(0))),
    filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    )),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Palette.primary),
            overlayColor:
                MaterialStateProperty.all(Palette.primary.withOpacity(.1)))),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 0, backgroundColor: Palette.primary),
    dialogBackgroundColor: Palette.dark,
    dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.all(12),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Palette.primary),
                borderRadius: BorderRadius.circular(10)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Palette.danger),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Palette.muted),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Palette.primary),
                borderRadius: BorderRadius.circular(10))))
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
