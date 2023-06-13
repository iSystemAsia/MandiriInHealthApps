import 'package:mandiri_in_health/models/sales_activity_model.dart';

abstract class SalesActivityListState {}

class SalesActivityListLoading extends SalesActivityListState {}

class SalesActivityListSuccess extends SalesActivityListState {
  final List<SalesActivityModel> list;
  final bool canLoadMore;
  final bool loadingMore;

  SalesActivityListSuccess({
    required this.list,
    required this.canLoadMore,
    this.loadingMore = false,
  });
}
