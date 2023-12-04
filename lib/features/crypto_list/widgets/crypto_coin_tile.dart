import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_flutter2/repositories/crypto_coins/models/crypto_coin.dart';


class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile(this.coin, {super.key});

  final CryptoCoin? coin;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final formatCurrency = NumberFormat("#,##0.00", "en_US");

    return ListTile(
      leading: Image.network(coin?.imageUrl ?? ""),
      title: Text(
        coin?.name ?? "",
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        "${formatCurrency.format(coin?.priceInUSD ?? 0)}\$",
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed("/coin", arguments: "Bitcoin");
      },
    );
  }
}
