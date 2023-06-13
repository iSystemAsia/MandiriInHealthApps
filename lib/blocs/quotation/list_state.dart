import 'package:mandiri_in_health/models/quotation_model.dart';

abstract class QuotationListState {}

class QuotationListLoading extends QuotationListState {}

class QuotationListSuccess extends QuotationListState {
  final List<QuotationModel> list;
  final bool canLoadMore;
  final bool loadingMore;

  QuotationListSuccess({
    required this.list,
    required this.canLoadMore,
    this.loadingMore = false,
  });
}
