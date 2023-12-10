import 'package:flutter/material.dart';

final theme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
    appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 31, 31, 31),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700)),
    dividerColor: Colors.white24,
    dialogBackgroundColor: Colors.white,
    listTileTheme: const ListTileThemeData(iconColor: Colors.white),
    textTheme: TextTheme(
        headlineMedium: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700
        ),
        bodyMedium: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white),
        labelSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.white.withOpacity(0.6))));