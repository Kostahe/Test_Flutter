import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({super.key});

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = Theme.of(context);

    return ListTile(
      leading: SvgPicture.asset(
        "assets/svg/bitcoin.svg",
        height: 30,
        width: 30,
      ),
      title: Text(
        "Bitcoin",
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        "200000\$",
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed("/coin", arguments: "Bitcoin");
      },
    );
  }
}
