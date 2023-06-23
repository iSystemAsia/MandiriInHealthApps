import 'package:mandiri_in_health/models/quotation_model.dart';

abstract class QuotationDetailState {}

class QuotationDetailLoading extends QuotationDetailState {}

class QuotationDetailSuccess extends QuotationDetailState {
  final QuotationModel quotation;

  QuotationDetailSuccess(this.quotation);
}
