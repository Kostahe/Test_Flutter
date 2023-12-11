import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_flutter2/crypto_coins_list_app.dart';
import 'package:test_flutter2/repositories/crypto_coins/crypto_coins.dart';

import 'firebase_options.dart';

Future<void> main() async {
  GetIt.I.registerLazySingleton<AbstractCoinsRepository>(
      () => CryptoCoinsRepository(dio: Dio()));

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const CryptoCurrenciesListApp());
}
