import 'package:mandiri_in_health/models/model.dart';

abstract class ProductDetailState {}

class ProductDetailLoading extends ProductDetailState {}

class ProductDetailSuccess extends ProductDetailState {
  final ProductModel product;

  ProductDetailSuccess(this.product);
}
