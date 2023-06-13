import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandiri_in_health/blocs/bloc.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/achievement_agent_model.dart';
import 'package:mandiri_in_health/models/menu_model.dart';
import 'package:mandiri_in_health/models/model.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';
import 'package:mandiri_in_health/screens/home/home_category_item.dart';
import 'package:mandiri_in_health/screens/home/home_sliver_app_bar.dart';
import 'package:mandiri_in_health/widgets/achievement_agent/item.dart';
import 'package:mandiri_in_health/widgets/pipeline/top3_pipeline_item.dart';
import 'package:mandiri_in_health/widgets/quotation/top5_quotation_item.dart';
import 'package:mandiri_in_health/widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  late StreamSubscription _submitSubscription;
  late StreamSubscription _reviewSubscription;

  String achievementTitle = "Achievement Agent";
  String achievementSubTitle = "Total In Current Year";
  String top3PipelineTitle = "Top 3 Pipeline";
  String top3PipelineSubTitle = "Based On Total GWP Current Year";
  String top5QuotationTitle = "Top 5 Quotation";
  String top5QuotationSubTitle = "Based On Total GWP Current Year";

  @override
  void initState() {
    super.initState();
    AppBloc.homeCubit.onLoad();
    _submitSubscription = AppBloc.submitCubit.stream.listen((state) {
      if (state is Submitted) {
        AppBloc.homeCubit.onLoad();
      }
    });
    _reviewSubscription = AppBloc.reviewCubit.stream.listen((state) {
      if (state is ReviewSuccess && state.id != null) {
        AppBloc.homeCubit.onLoad();
      }
    });
  }

  @override
  void dispose() {
    _submitSubscription.cancel();
    _reviewSubscription.cancel();
    super.dispose();
  }

  ///Refresh
  Future<void> _onRefresh() async {
    await AppBloc.homeCubit.onLoad();
  }

  ///On search
  void _onSearch() {
    Navigator.pushNamed(context, Routes.searchHistory);
  }

  ///On scan
  void _onScan() async {
    final result = await Navigator.pushNamed(context, Routes.scanQR);
    if (result != null) {
      final deeplink = DeepLinkModel.fromString(result as String);
      if (deeplink.target.isNotEmpty) {
        if (!mounted) return;
        Navigator.pushNamed(
          context,
          Routes.deepLink,
          arguments: deeplink,
        );
      }
    }
  }

  ///On select category
  void _onMenu(String route) {
    print("_onMenu clicked > $route");
    Navigator.pushNamed(context, route);
  }

  ///On navigate product detail
  void _onPipelineDetail(PipelineModel item) {
    Navigator.pushNamed(context, Routes.productDetail, arguments: item);
  }

  void _onQuotationDetail(QuotationModel item) {
    Navigator.pushNamed(context, Routes.productDetail, arguments: item);
  }

  Widget _buildMenu(List<MenuModel>? menu) {
    ///Loading
    Widget content = Wrap(
      runSpacing: 8,
      alignment: WrapAlignment.center,
      children: List.generate(8, (index) => index).map(
        (item) {
          return const HomeCategoryItem();
        },
      ).toList(),
    );

    if (menu != null) {
      List<MenuModel> menuList = menu;

      content = Wrap(
        runSpacing: 8,
        alignment: WrapAlignment.center,
        children: menuList.map(
          (item) {
            return HomeCategoryItem(
              item: item,
              onPressed: (item) => _onMenu(item.route),
            );
          },
        ).toList(),
      );
    }

    return Container(
      padding: const EdgeInsets.all(8),
      child: content,
    );
  }

  Widget _buildAchievementAgent(List<AchievementAgentModel>? achievementAgentList) {
    ///Loading
    Widget content = ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: AppCategoryItem(
            type: CategoryView.cardLarge,
          ),
        );
      },
      itemCount: List.generate(8, (index) => index).length,
    );

    if (achievementAgentList != null) {
      content = ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        itemBuilder: (context, index) {
          final item = achievementAgentList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: AchievementAgentItem(
              item: item,
              onPressed: () {
              },
            ),
          );
        },
        itemCount: achievementAgentList.length,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                achievementTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                achievementSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Container(
          height: 180,
          padding: const EdgeInsets.only(top: 4),
          child: content,
        ),
      ],
    );
  }

  Widget _buildTop3Pipeline(List<PipelineModel>? recent) {
    ///Loading
    Widget content = ListView.builder(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: AppProductItem(type: ProductViewType.small),
        );
      },
      itemCount: 3,
    );

    if (recent != null) {
      content = ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final item = recent[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Top3PipelineItem(
              onPressed: () {
                _onPipelineDetail(item);
              },
              item: item,
            ),
          );
        },
        itemCount: recent.length,
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                top3PipelineTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                top3PipelineSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          const SizedBox(height: 8),
          content,
        ],
      ),
    );
  }

  Widget _buildTop5Quotation(List<QuotationModel>? recent) {
    ///Loading
    Widget content = ListView.builder(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: AppProductItem(type: ProductViewType.small),
        );
      },
      itemCount: 5,
    );

    if (recent != null) {
      content = ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final item = recent[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Top5QuotationItem(
              onPressed: () {
                _onQuotationDetail(item);
              },
              item: item,
            ),
          );
        },
        itemCount: recent.length,
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                top5QuotationTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                top5QuotationSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          const SizedBox(height: 8),
          content,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          List<String>? banner;
          List<MenuModel>? menuList;
          List<AchievementAgentModel>? achievementAgentList;
          List<PipelineModel>? pipelineList;
          List<QuotationModel>? quotationList;

          if (state is HomeSuccess) {
            banner = state.banner;
            menuList = state.menuList;
            achievementAgentList = state.achievementAgentList;
            pipelineList = state.pipelineList;
            quotationList = state.quotationList;
          }

          return CustomScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: <Widget>[
              SliverPersistentHeader(
                delegate: AppBarHomeSliver(
                  expandedHeight: MediaQuery.of(context).size.height * 0.3,
                  banners: banner,
                  onSearch: _onSearch,
                  onScan: _onScan,
                ),
                pinned: true,
              ),
              CupertinoSliverRefreshControl(
                onRefresh: _onRefresh,
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  SafeArea(
                    top: false,
                    bottom: false,
                    child: Column(
                      children: <Widget>[
                        _buildMenu(menuList),
                        _buildAchievementAgent(achievementAgentList),
                        const SizedBox(height: 8),
                        _buildTop3Pipeline(pipelineList),
                        const SizedBox(height: 8),
                        _buildTop5Quotation(quotationList),
                        const SizedBox(height: 28),
                      ],
                    ),
                  )
                ]),
              )
            ],
          );
        },
      ),
    );
  }
}
