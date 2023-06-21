import 'package:mandiri_in_health/models/closing_model.dart';

abstract class ClosingListState {}

class ClosingListLoading extends ClosingListState {}

class ClosingListSuccess extends ClosingListState {
  final List<ClosingModel> list;
  final bool canLoadMore;
  final bool loadingMore;

  ClosingListSuccess({
    required this.list,
    required this.canLoadMore,
    this.loadingMore = false,
  });
}
