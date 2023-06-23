import 'package:mandiri_in_health/models/sales_activity_model.dart';

abstract class SalesActivityDetailState {}

class SalesActivityDetailLoading extends SalesActivityDetailState {}

class SalesActivityDetailSuccess extends SalesActivityDetailState {
  final SalesActivityModel salesActivity;

  SalesActivityDetailSuccess(this.salesActivity);
}
