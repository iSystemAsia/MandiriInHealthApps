import 'package:mandiri_in_health/models/pipeline_model.dart';

abstract class PipelineListState {}

class PipelineListLoading extends PipelineListState {}

class PipelineListSuccess extends PipelineListState {
  final List<PipelineModel> list;
  final bool canLoadMore;
  final bool loadingMore;

  PipelineListSuccess({
    required this.list,
    required this.canLoadMore,
    this.loadingMore = false,
  });
}
