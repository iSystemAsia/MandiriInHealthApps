import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/blocs/sales_activity/list_state.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/model_filter.dart';
import 'package:mandiri_in_health/models/model_pagination.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';
import 'package:mandiri_in_health/models/sales_activity_model.dart';
import 'package:mandiri_in_health/repository/sales_activity_repository.dart';

class SalesActivityListCubit extends Cubit<SalesActivityListState> {
  SalesActivityListCubit() : super(SalesActivityListLoading());

  int page = 1;
  List<SalesActivityModel> list = [];
  PaginationModel? pagination;

  Future<void> onLoad() async {
    page = 1;

    ///Fetch API
    final result = await SalesActivityRepository.loadList(
      page: page,
      perPage: 10,
      // filter: filter,
    );
    if (result != null) {
      list = result[0];
      pagination = result[1];

      ///Notify
      emit(SalesActivityListSuccess(
        list: list,
        canLoadMore: pagination!.page < pagination!.maxPage,
      ));
    }
  }

  Future<void> onLoadMore() async {
    page = page + 1;

    ///Notify
    emit(SalesActivityListSuccess(
      loadingMore: true,
      list: list,
      canLoadMore: pagination!.page < pagination!.maxPage,
    ));

    ///Fetch API
    final result = await SalesActivityRepository.loadList(
      page: page,
      perPage: Application.setting.perPage,
      // filter: filter,
    );
    if (result != null) {
      list.addAll(result[0]);
      pagination = result[1];

      ///Notify
      emit(SalesActivityListSuccess(
        list: list,
        canLoadMore: pagination!.page < pagination!.maxPage,
      ));
    }
  }
}
