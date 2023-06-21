import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandiri_in_health/blocs/bloc.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/model.dart';
import 'package:mandiri_in_health/screens/home/search_bar.dart';
import 'package:mandiri_in_health/utils/utils.dart';
import 'package:mandiri_in_health/widgets/widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State<Dashboard> {
  final _discoveryCubit = DiscoveryCubit();
  late StreamSubscription _submitSubscription;

  @override
  void initState() {
    super.initState();
    // _discoveryCubit.onLoad();
    _submitSubscription = AppBloc.submitCubit.stream.listen((state) {
      if (state is Submitted) {
        _onRefresh();
      }
    });
  }

  @override
  void dispose() {
    _submitSubscription.cancel();
    _discoveryCubit.close();
    super.dispose();
  }

  ///On refresh
  Future<void> _onRefresh() async {
    await _discoveryCubit.onLoad();
  }

  ///On search
  void _onSearch() {
    Navigator.pushNamed(context, Routes.searchHistory);
  }

  ///On navigate list product
  void _onProductList(CategoryModel item) {
    Navigator.pushNamed(
      context,
      Routes.listProduct,
      arguments: item,
    );
  }

  ///On navigate product detail
  void _onProductDetail(ProductModel item) {
    Navigator.pushNamed(context, Routes.productDetail, arguments: item);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Column(
              children: [
                HomeSearchBar(
                  onSearch: _onSearch,
                  onScan: _onScan,
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<DiscoveryCubit, DiscoveryState>(
              bloc: _discoveryCubit,
              builder: (context, discovery) {
                ///Loading
                Widget content = SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return const AppDiscoveryItem();
                    },
                    childCount: 15,
                  ),
                );

                ///Success
                if (discovery is DiscoverySuccess) {
                  if (discovery.list.isEmpty) {
                    content = SliverFillRemaining(
                      child: Center(
                        child: Text(
                          Translate.of(context).translate(
                            'can_not_found_data',
                          ),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    );
                  } else {
                    content = SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final item = discovery.list[index];
                          return AppDiscoveryItem(
                            item: item,
                            onSeeMore: _onProductList,
                            onProductDetail: _onProductDetail,
                          );
                        },
                        childCount: discovery.list.length,
                      ),
                    );
                  }
                }

                return CustomScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: <Widget>[
                    CupertinoSliverRefreshControl(
                      onRefresh: _onRefresh,
                    ),
                    SliverSafeArea(
                      top: false,
                      sliver: SliverPadding(
                        padding: const EdgeInsets.only(top: 8, bottom: 28),
                        sliver: content,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
