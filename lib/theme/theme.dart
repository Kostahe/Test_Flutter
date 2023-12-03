import 'package:flutter/material.dart';

final theme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
    appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 31, 31, 31),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700)),
    dividerColor: Colors.white24,
    listTileTheme: const ListTileThemeData(iconColor: Colors.white),
    textTheme: TextTheme(
        bodyMedium: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white),
        labelSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.white.withOpacity(0.6))));