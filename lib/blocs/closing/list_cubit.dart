import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/blocs/closing/list_state.dart';
import 'package:mandiri_in_health/blocs/pipeline/list_state.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/closing_model.dart';
import 'package:mandiri_in_health/models/model_pagination.dart';
import 'package:mandiri_in_health/repository/closing_repository.dart';
import 'package:mandiri_in_health/repository/pipeline_repository.dart';

class ClosingListCubit extends Cubit<ClosingListState> {
  ClosingListCubit() : super(ClosingListLoading());

  int page = 1;
  List<ClosingModel> list = [];
  PaginationModel? pagination;

  Future<void> onLoad() async {
    page = 1;

    ///Fetch API
    final result = await ClosingRepository.loadList(
      page: page,
      perPage: 10,
      // filter: filter,
    );
    if (result != null) {
      list = result[0];
      pagination = result[1];

      ///Notify
      emit(ClosingListSuccess(
        list: list,
        canLoadMore: pagination!.page < pagination!.maxPage,
      ));
    }
  }

  Future<void> onLoadMore() async {
    page = page + 1;

    ///Notify
    emit(ClosingListSuccess(
      loadingMore: true,
      list: list,
      canLoadMore: pagination!.page < pagination!.maxPage,
    ));

    ///Fetch API
    final result = await PipelineRepository.loadList(
      page: page,
      perPage: Application.setting.perPage,
      // filter: filter,
    );
    if (result != null) {
      list.addAll(result[0]);
      pagination = result[1];

      ///Notify
      emit(ClosingListSuccess(
        list: list,
        canLoadMore: pagination!.page < pagination!.maxPage,
      ));
    }
  }
}
