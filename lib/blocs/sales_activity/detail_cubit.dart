import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/blocs/sales_activity/detail_state.dart';
import 'package:mandiri_in_health/models/sales_activity_model.dart';
import 'package:mandiri_in_health/repository/sales_activity_repository.dart';

class SalesActivityDetailCubit extends Cubit<SalesActivityDetailState> {
  SalesActivityDetailCubit() : super(SalesActivityDetailLoading());
  SalesActivityModel? salesActivity;

  void onLoad(String id) async {
    final result = await SalesActivityRepository.loadSalesActivity(id);
    print("QuotationDetailCubit > onLoad > result: $result");

    if (result != null) {
      salesActivity = result;
      emit(SalesActivityDetailSuccess(salesActivity!));
    }
  }
}
