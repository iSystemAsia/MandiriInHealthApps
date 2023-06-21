import 'package:mandiri_in_health/models/closing_model.dart';

abstract class ClosingDetailState {}

class ClosingDetailLoading extends ClosingDetailState {}

class ClosingDetailSuccess extends ClosingDetailState {
  final ClosingModel closing;

  ClosingDetailSuccess(this.closing);
}
