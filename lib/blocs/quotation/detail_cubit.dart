import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/blocs/quotation/detail_state.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';
import 'package:mandiri_in_health/repository/quotation_repository.dart';

class QuotationDetailCubit extends Cubit<QuotationDetailState> {
  QuotationDetailCubit() : super(QuotationDetailLoading());
  QuotationModel? quotatation;

  void onLoad(String id) async {
    final result = await QuotationRepository.loadQuotation(id);
    print("QuotationDetailCubit > onLoad > result: $result");

    if (result != null) {
      quotatation = result;
      emit(QuotationDetailSuccess(quotatation!));
    }
  }
}
