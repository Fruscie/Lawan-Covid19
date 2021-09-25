import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lawan_covid19/API/api_provider.dart';
import 'package:lawan_covid19/models/kasus_model.dart';

part 'kasuscovid_event.dart';
part 'kasuscovid_state.dart';

class KasusCovidBloc extends Bloc<KasusCovidEvent, KasusCovidState> {
  final ApiProvider apiProvider = ApiProvider();

  KasusCovidBloc() : super(KasusCovidInitial()) {
    on<KasusCovidEvent>((event, emit) async {
      if (event is GetKasusCovid) {
        try {
          final dataKasus = await apiProvider.getKasus();

          emit(DataKasusLoaded(dataKasus));
        } catch (e) {
          print('ada error di kasus bloc $e');
        }
      }
    });
  }
}
