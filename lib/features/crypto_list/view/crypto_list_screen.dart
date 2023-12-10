import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_flutter2/features/crypto_list/bloc/crypto_list_bloc.dart';
import 'package:test_flutter2/features/crypto_list/widgets/widgets.dart';
import 'package:test_flutter2/repositories/crypto_coins/crypto_coins.dart';

import '../../../theme/theme.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  final _cryptoListBloc = CryptoListBloc(GetIt.I<AbstractCoinsRepository>());

  @override
  void initState() {
    _cryptoListBloc.add(LoadCryptoList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CryptoCurrenciesList"),
        ),
        body: BlocBuilder<CryptoListBloc, CryptoListState>(
          bloc: _cryptoListBloc,
          builder: (context, state) {
            if (state is CryptoListLoaded) {
              return ListView.separated(
                  padding: const EdgeInsets.only(top: 16),
                  itemCount: state.coinsList.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    final coin = state.coinsList[index];
                    return CryptoCoinTile(coin);
                  });
            } else if (state is CryptoListLoadingFailure) {
              return Center(
                  child: Column(
                children: <Widget>[
                  Text(
                    "Something went wrong",
                    style: theme.textTheme.headlineLarge,
                  ),
                  Text(
                    "Please try again",
                    style: theme.textTheme.labelSmall?.copyWith(fontSize: 20),
                  )
                ],
              ));
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
