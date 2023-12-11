import 'package:flutter/material.dart';
import 'package:test_flutter2/features/crypto_coin/widgets/widgets.dart';
import 'package:test_flutter2/repositories/crypto_coins/crypto_coins.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  CryptoCoin? coin;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is CryptoCoin, "You must provide String args");
    coin = args as CryptoCoin;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coin?.name ?? "null"),
      ),
      body: Center(child: CryptoCoinDetail(coin: coin,)),
    );
  }
}
