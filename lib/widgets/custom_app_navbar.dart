import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/model.dart';
import 'package:mandiri_in_health/utils/utils.dart';

enum PageType { map, list }

class CustomAppNavBar extends StatelessWidget {
  final PageType pageStyle;
  final SortModel? currentSort;
  final VoidCallback onChangeSort;
  final VoidCallback onChangeView;
  final VoidCallback onFilter;
  final IconData iconModeView;

  const CustomAppNavBar({
    Key? key,
    this.pageStyle = PageType.list,
    this.currentSort,
    required this.onChangeSort,
    required this.iconModeView,
    required this.onChangeView,
    required this.onFilter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String sortTitle = Translate.of(context).translate('sort');
    if (currentSort != null) {
      sortTitle = Translate.of(context).translate(currentSort!.title);
    }
    return SafeArea(
      top: false,
      bottom: false,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.swap_vert),
                onPressed: onChangeSort,
              ),
              Text(
                sortTitle,
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(iconModeView),
                    onPressed: onChangeView,
                  ),
                  SizedBox(
                    height: 24,
                    child: VerticalDivider(
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Text(
                  Translate.of(context).translate('filter'),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
