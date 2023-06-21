import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/blocs/closing/detail_state.dart';
import 'package:mandiri_in_health/models/closing_model.dart';
import 'package:mandiri_in_health/repository/closing_repository.dart';

class ClosingDetailCubit extends Cubit<ClosingDetailState> {
  ClosingDetailCubit() : super(ClosingDetailLoading());
  ClosingModel? closing;

  void onLoad(String id) async {
    final result = await ClosingRepository.loadClosing(id);
    print("ClosingDetailCubit > onLoad > result: $result");

    if (result != null) {
      closing = result;
      emit(ClosingDetailSuccess(closing!));
    }
  }
}
