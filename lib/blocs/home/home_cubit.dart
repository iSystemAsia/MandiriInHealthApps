import 'package:bloc/bloc.dart';
import 'package:listar_flutter_pro/api/api.dart';
import 'package:listar_flutter_pro/blocs/bloc.dart';
import 'package:listar_flutter_pro/configs/config.dart';
import 'package:listar_flutter_pro/models/model.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoading());

  Future<void> onLoad() async {
    List<CategoryModel> achievementAgent = [];
    List<ProductModel> top3Pipeline = [];
    List<ProductModel> top5Quotation = [];

    final responseAchievementAgent = await Api.requestAchievementAgent();
    achievementAgent =
          List.from(responseAchievementAgent.data['locations'] ?? [])
              .map((item) {
        return CategoryModel.fromJson(item);
      }).toList();

    final responseTop3Pipeline = await Api.requestTop3Pipeline();
    top3Pipeline =
          List.from(responseTop3Pipeline.data['recent_posts'] ?? [])
              .map((item) {
        return ProductModel.fromJson(item);
      }).toList();

    final responseTop5Quotation = await Api.requestTop5Quotation();
    top5Quotation =
          List.from(responseTop5Quotation.data['recent_posts'] ?? [])
              .map((item) {
        return ProductModel.fromJson(item);
      }).toList();

    print("achievementAgent: $achievementAgent");

    ///Fetch API Home
    List<String> banner = [];
    List<ProductModel> recent = [];
    List<CategoryModel> category = [];
    List<CategoryModel> location = [];
    
    final response = await Api.requestHome();
    if (response.success) {
      banner = List<String>.from(response.data['sliders'] ?? []);
      category = List.from(response.data['categories'] ?? []).map((item) {
        return CategoryModel.fromJson(item);
      }).toList();
      location = List.from(response.data['locations'] ?? []).map((item) {
        return CategoryModel.fromJson(item);
      }).toList();
      recent = List.from(response.data['recent_posts'] ?? []).map((item) {
        return ProductModel.fromJson(
          item,
          setting: Application.setting,
        );
      }).toList();
    }

    return emit(HomeSuccess(
      banner: banner,
      category: category,
      location: location,
      recent: recent,
      achievementAgent: achievementAgent,
      top3Pipeline: top3Pipeline,
      top5Quotation: top5Quotation,
    ));

    // AppBloc.messageCubit.onShow("Gagal coeg");
  }
}
