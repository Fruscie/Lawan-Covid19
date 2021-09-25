part of 'kasuscovid_bloc.dart';

abstract class KasusCovidState extends Equatable {
  const KasusCovidState();

  @override
  List<Object> get props => [];
}

class KasusCovidInitial extends KasusCovidState {}

class DataKasusLoaded extends KasusCovidState {
  final KasusCovidModel kasusCovidModel;

  const DataKasusLoaded(this.kasusCovidModel);

  @override
  List<Object> get props => [kasusCovidModel];
}
