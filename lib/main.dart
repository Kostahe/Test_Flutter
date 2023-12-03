import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
          appBarTheme: const AppBarTheme(
              color: Color.fromARGB(255, 31, 31, 31),
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700
              )),
          dividerColor: Colors.white24,
          listTileTheme: const ListTileThemeData(
              iconColor: Colors.white
          ),
          textTheme: TextTheme(
              bodyMedium: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              labelSmall: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white.withOpacity(0.6)))),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("CryptoCurrenciesList"),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (BuildContext context, int index) =>
            ListTile(
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
            ),
      ),
    );
  }
}
