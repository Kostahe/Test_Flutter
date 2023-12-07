import 'dart:async';

import 'package:bloc/bloc.dart' show Bloc;
import "package:meta/meta.dart";
import 'package:test_flutter2/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:test_flutter2/repositories/crypto_coins/crypto_coins.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  CryptoListBloc(this._coinsRepository) : super(CryptoListInitial()) {
    on<LoadCryptoList>((event, emit) async {
      final coinsList = await _coinsRepository.getCoinsList();
      emit(CryptoListLoaded(coinsList: coinsList));
    });
  }

  final AbstractCoinsRepository _coinsRepository;
}
