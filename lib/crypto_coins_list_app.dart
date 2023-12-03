import 'package:flutter/material.dart';
import 'package:test_flutter2/router/router.dart';
import 'package:test_flutter2/theme/theme.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      routes: routes,
    );
  }
}