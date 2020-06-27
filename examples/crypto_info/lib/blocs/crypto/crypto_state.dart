part of 'crypto_bloc.dart';

abstract class CryptoState extends Equatable {
  const CryptoState();

  @override
  List<Object> get props => [];
}

// initial state
class CryptoEmpty extends CryptoState {}

// fetching coins
class CryptoLoading extends CryptoState {}

// retrieved coins
class CryptoLoaded extends CryptoState {
  final List<Coin> coins;

  const CryptoLoaded({this.coins});

  @override
  List<Object> get props => [coins];

  @override
  String toString() => 'CryptoLoaded { coins: $coins }';
}

// API request error
class CryptoError extends CryptoState {}
