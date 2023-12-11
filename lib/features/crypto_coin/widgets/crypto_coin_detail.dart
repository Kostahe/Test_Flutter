import 'package:flutter/material.dart';
import 'package:test_flutter2/repositories/crypto_coins/crypto_coins.dart';
import 'package:test_flutter2/theme/theme.dart';

class CryptoCoinDetail extends StatelessWidget {
  const CryptoCoinDetail({super.key, required, required this.coin});

  final CryptoCoin? coin;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          coin?.imageUrl ?? "",
          width: 130,
        ),
        Text(
          coin?.name ?? "null",
          style: theme.textTheme.headlineMedium,
        ),
        Card(
          child: SizedBox(
              height: 40,
              width: 300,
              child: Center(child: Text("${coin?.priceInUSD ?? "null"}\$"))),
        ),
      ],
    );
  }
}
