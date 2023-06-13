import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/blocs/quotation/list_state.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/model_filter.dart';
import 'package:mandiri_in_health/models/model_pagination.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';
import 'package:mandiri_in_health/repository/quotation_repository.dart';

class QuotationListCubit extends Cubit<QuotationListState> {
  QuotationListCubit() : super(QuotationListLoading());

  int page = 1;
  List<QuotationModel> list = [];
  PaginationModel? pagination;

  Future<void> onLoad() async {
    page = 1;

    ///Fetch API
    final result = await QuotationRepository.loadList(
      page: page,
      perPage: 10,
      // filter: filter,
    );
    if (result != null) {
      list = result[0];
      pagination = result[1];

      ///Notify
      emit(QuotationListSuccess(
        list: list,
        canLoadMore: pagination!.page < pagination!.maxPage,
      ));
    }
  }

  Future<void> onLoadMore() async {
    page = page + 1;

    ///Notify
    emit(QuotationListSuccess(
      loadingMore: true,
      list: list,
      canLoadMore: pagination!.page < pagination!.maxPage,
    ));

    ///Fetch API
    final result = await QuotationRepository.loadList(
      page: page,
      perPage: Application.setting.perPage,
      // filter: filter,
    );
    if (result != null) {
      list.addAll(result[0]);
      pagination = result[1];

      ///Notify
      emit(QuotationListSuccess(
        list: list,
        canLoadMore: pagination!.page < pagination!.maxPage,
      ));
    }
  }
}
