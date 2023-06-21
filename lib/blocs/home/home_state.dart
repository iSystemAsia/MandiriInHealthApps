import 'package:mandiri_in_health/models/achievement_agent_model.dart';
import 'package:mandiri_in_health/models/menu_model.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

abstract class HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final List<String> banner;
  final List<MenuModel> menuList;
  final List<AchievementAgentModel> achievementAgentList;
  final List<PipelineModel> pipelineList;
  final List<QuotationModel> quotationList;

  HomeSuccess({
    required this.banner,
    required this.menuList,
    required this.achievementAgentList,
    required this.pipelineList,
    required this.quotationList,
  });
}
