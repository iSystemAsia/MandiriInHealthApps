import 'package:listar_flutter_pro/models/model.dart';

abstract class HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final List<String>? banner;
  final List<CategoryModel>? category;
  final List<CategoryModel>? location;
  final List<ProductModel>? recent;

  final List<CategoryModel>? achievementAgent;
  final List<ProductModel>? top3Pipeline;
  final List<ProductModel>? top5Quotation;

  HomeSuccess({
    this.banner,
    this.category,
    this.location,
    this.recent,
    this.achievementAgent,
    this.top3Pipeline,
    this.top5Quotation,
  });
}
