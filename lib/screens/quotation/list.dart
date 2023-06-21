import 'dart:async';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandiri_in_health/blocs/quotation/list_cubit.dart';
import 'package:mandiri_in_health/blocs/quotation/list_state.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/model_filter.dart';
import 'package:mandiri_in_health/models/model_picker.dart';
import 'package:mandiri_in_health/models/model_setting.dart';
import 'package:mandiri_in_health/models/model_sort.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';
import 'package:mandiri_in_health/utils/translate.dart';
import 'package:mandiri_in_health/widgets/app_bottom_picker.dart';
import 'package:mandiri_in_health/widgets/app_product_item.dart';
import 'package:mandiri_in_health/widgets/custom_app_navbar.dart';
import 'package:mandiri_in_health/widgets/quotation/quotation_item.dart';

class QuotationList extends StatefulWidget {
  const QuotationList({Key? key}) : super(key: key);

  @override
  State<QuotationList> createState() {
    return _QuotationListState();
  }
}

class _QuotationListState extends State<QuotationList> {
  final _listCubit = QuotationListCubit();
  final _swipeController = SwiperController();
  final _scrollController = ScrollController();
  final _endReachedThreshold = 100;

  final PageType _pageType = PageType.list;
  ProductViewType _listMode = Application.setting.listMode;

  // FilterModel _filter = FilterModel.fromDefault();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    // if (widget.category.type == CategoryType.category) {
    //   _filter.categories.add(widget.category);
    // }
    // if (widget.category.type == CategoryType.feature) {
    //   _filter.features.add(widget.category);
    // }
    // if (widget.category.type == CategoryType.location) {
    //   _filter.city = widget.category;
    // }
    _onRefresh();
  }

  @override
  void dispose() {
    _swipeController.dispose();
    _scrollController.dispose();
    _listCubit.close();
    super.dispose();
  }

  ///Handle load more
  void _onScroll() {
    if (_scrollController.position.extentAfter > _endReachedThreshold) return;
    final state = _listCubit.state;
    if (state is QuotationListSuccess &&
        state.canLoadMore &&
        !state.loadingMore) {
      _listCubit.onLoadMore();
    }
  }

  ///On Refresh List
  Future<void> _onRefresh() async {
    await _listCubit.onLoad();
  }

  ///On Change Sort
  void _onChangeSort() async {
    final result = await showModalBottomSheet<SortModel?>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return AppBottomPicker(
          picker: PickerModel(
            selected: [],
            data: Application.setting.sort,
          ),
        );
      },
    );
    if (result != null) {
      // setState(() {
      //   _filter.sort = result;
      // });
      _onRefresh();
    }
  }

  ///On Change View
  void _onChangeView() {
    switch (_listMode) {
      case ProductViewType.grid:
        _listMode = ProductViewType.list;
        break;
      case ProductViewType.list:
        _listMode = ProductViewType.block;
        break;
      case ProductViewType.block:
        _listMode = ProductViewType.grid;
        break;
      default:
        return;
    }
    setState(() {
      _listMode = _listMode;
    });
  }

  ///On change filter
  void _onChangeFilter() async {
    final result = await Navigator.pushNamed(
      context,
      Routes.filter,
      // arguments: _filter.clone(),
    );
    if (result != null && result is FilterModel) {
      // setState(() {
      //   _filter = result;
      // });
      _onRefresh();
    }
  }

  ///On navigate product detail
  void _onQuotationDetail(QuotationModel item) {
    Navigator.pushNamed(context, Routes.quotationDetail, arguments: item);
  }

  ///Export Icon for Mode View
  IconData _exportIconView() {
    ///Icon for ListView Mode
    switch (_listMode) {
      case ProductViewType.list:
        return Icons.view_list;
      case ProductViewType.grid:
        return Icons.view_quilt;
      case ProductViewType.block:
        return Icons.view_array;
      default:
        return Icons.help;
    }
  }

  ///_build Item
  Widget _buildItem({
    QuotationModel? item,
    required ProductViewType type,
  }) {
    switch (type) {
      case ProductViewType.list:
        if (item != null) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: QuotationItem(
              onPressed: () {
                _onQuotationDetail(item);
              },
              item: item,
              type: _listMode,
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AppProductItem(
            type: _listMode,
          ),
        );
      default:
        if (item != null) {
          return QuotationItem(
            onPressed: () {
              _onQuotationDetail(item);
            },
            item: item,
            type: _listMode,
          );
        }
        return AppProductItem(
          type: _listMode,
        );
    }
  }

  ///Build Content Page Style
  Widget _buildContent() {
    return BlocBuilder<QuotationListCubit, QuotationListState>(
      builder: (context, state) {
        /// List Style
        if (_pageType == PageType.list) {
          Widget contentList = ListView.builder(
            padding: const EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: _buildItem(type: _listMode),
              );
            },
            itemCount: 8,
          );
          if (_listMode == ProductViewType.grid) {
            final size = MediaQuery.of(context).size;
            final left = MediaQuery.of(context).padding.left;
            final right = MediaQuery.of(context).padding.right;
            const itemHeight = 220;
            final itemWidth = (size.width - 48 - left - right) / 2;
            final ratio = itemWidth / itemHeight;
            contentList = GridView.count(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              crossAxisCount: 2,
              childAspectRatio: ratio,
              children: List.generate(8, (index) => index).map((item) {
                return _buildItem(type: _listMode);
              }).toList(),
            );
          }

          ///Build List
          if (state is QuotationListSuccess) {
            List list = List.from(state.list);
            if (state.loadingMore) {
              list.add(null);
            }
            contentList = RefreshIndicator(
              onRefresh: _onRefresh,
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.only(top: 8),
                itemBuilder: (context, index) {
                  final item = list[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: _buildItem(item: item, type: _listMode),
                  );
                },
                itemCount: list.length,
              ),
            );
            if (_listMode == ProductViewType.grid) {
              final size = MediaQuery.of(context).size;
              final left = MediaQuery.of(context).padding.left;
              final right = MediaQuery.of(context).padding.right;
              const itemHeight = 220;
              final itemWidth = (size.width - 48 - left - right) / 2;
              final ratio = itemWidth / itemHeight;
              contentList = RefreshIndicator(
                onRefresh: _onRefresh,
                child: GridView.count(
                  controller: _scrollController,
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  crossAxisCount: 2,
                  childAspectRatio: ratio,
                  children: list.map((item) {
                    return _buildItem(item: item, type: _listMode);
                  }).toList(),
                ),
              );
            }

            ///Build List empty
            if (state.list.isEmpty) {
              contentList = Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(Icons.sentiment_satisfied),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        Translate.of(context).translate('list_is_empty'),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              );
            }
          }

          /// List
          return SafeArea(child: contentList);
        }

        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _listCubit,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Quotation"),
        ),
        body: Column(
          children: <Widget>[
            CustomAppNavBar(
              // currentSort: _filter.sort,
              onChangeSort: _onChangeSort,
              iconModeView: _exportIconView(),
              onChangeView: _onChangeView,
              onFilter: _onChangeFilter,
            ),
            Expanded(
              child: _buildContent(),
            )
          ],
        ),
      ),
    );
  }
}
