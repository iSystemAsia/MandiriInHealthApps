import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/blocs/pipeline/list_state.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/model_filter.dart';
import 'package:mandiri_in_health/models/model_pagination.dart';
import 'package:mandiri_in_health/models/pipeline_filter_model.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';
import 'package:mandiri_in_health/repository/pipeline_repository.dart';

class PipelineListCubit extends Cubit<PipelineListState> {
  PipelineListCubit() : super(PipelineListLoading());

  int page = 1;
  List<PipelineModel> list = [];
  PaginationModel? pagination;

  Future<void> onLoad(PipelineFilterModel filter) async {
    page = 1;

    ///Fetch API
    final result = await PipelineRepository.loadList(
      page: page,
      perPage: 10,
      filter: filter,
    );
    if (result != null) {
      list = result[0];
      pagination = result[1];

      ///Notify
      emit(PipelineListSuccess(
        list: list,
        canLoadMore: pagination!.page < pagination!.maxPage,
      ));
    }
  }

  Future<void> onLoadMore() async {
    page = page + 1;

    ///Notify
    emit(PipelineListSuccess(
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
      emit(PipelineListSuccess(
        list: list,
        canLoadMore: pagination!.page < pagination!.maxPage,
      ));
    }
  }
}
