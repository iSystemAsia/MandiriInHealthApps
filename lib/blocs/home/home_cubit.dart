import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/api/api.dart';
import 'package:mandiri_in_health/blocs/bloc.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/achievement_agent_model.dart';
import 'package:mandiri_in_health/models/menu_model.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';
import 'package:mandiri_in_health/models/user_model.dart';
import 'package:mandiri_in_health/utils/color.dart';
import 'package:mandiri_in_health/utils/icon.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoading());

  Future<void> onLoad() async {
    List<String> banner = ["https://ma.bpmonline.asia/images/data/thumbnails/1/Header.jpg"];
    List<MenuModel> menuList = [];
    List<AchievementAgentModel> achievementAgentList = [];
    List<PipelineModel> pipelineList = [];
    List<QuotationModel> quotationList = [];

    final getUser = Preferences.getString(Preferences.user);
    final user = getUser != null ? UserModel_.fromJson(jsonDecode(getUser)) : null;

    print("Home Cubit > onLoad > preference user: $getUser");

    menuList.addAll([
      // pipeline
      MenuModel(
        id: 0,
        title: "Pipeline",
        route: Routes.pipeline,
        icon: UtilIcon.getIconFromCss("fas fa-chart-column"),
        color: UtilColor.getColorFromHex("#45A4F7"),
      ),

      // sales activity
      MenuModel(
        id: 1,
        title: "Sales Activity",
        route: Routes.salesActivity,
        icon: UtilIcon.getIconFromCss("fas fa-calendar-days"),
        color: UtilColor.getColorFromHex("#FF9800"),
      ),
      
      // quotation
      MenuModel(
        id: 2,
        title: "Quotation",
        route: Routes.quotation,
        icon: UtilIcon.getIconFromCss("fas fa-handshake-simple"),
        color: UtilColor.getColorFromHex("#FF5722"),
      ),

      // closing
      MenuModel(
        id: 3,
        title: "Closing",
        route: Routes.closing,
        icon: UtilIcon.getIconFromCss("fas fa-medal"),
        color: UtilColor.getColorFromHex("#9C27B0"),
      ),
    ]);

    var request = await Future.wait([
      Api.requestAchievementAgent({
        'contact': user?.contactId,
        'kanal': user?.kanalId
      }),
      Api.requestTop3Pipeline({
        'contact': user?.contactId,
      }),
      Api.requestTop5Quotation({
        'contact': user?.contactId
      })
    ]);
    achievementAgentList = request[0] as List<AchievementAgentModel>;
    pipelineList = request[1] as List<PipelineModel>;
    quotationList = request[2] as List<QuotationModel>;

    print("Home Cubit > onLoad > menuList: $menuList");
    print("Home Cubit > onLoad > achievementAgentList: $achievementAgentList");
    print("Home Cubit > onLoad > pipelineList: $pipelineList");
    print("Home Cubit > onLoad > quotationList: $quotationList");

    emit(HomeSuccess(
        banner: banner,
        menuList: menuList,
        achievementAgentList: achievementAgentList,
        pipelineList: pipelineList,
        quotationList: quotationList
      ));

    // AppBloc.messageCubit.onShow(response.message);
  }
}
