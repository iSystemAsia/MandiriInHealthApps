import 'package:flutter/material.dart';
import 'package:mandiri_in_health/utils/utils.dart';

class HomeSearchBar extends StatelessWidget {
  final VoidCallback onSearch;
  final VoidCallback onScan;
  const HomeSearchBar({
    Key? key,
    required this.onSearch,
    required this.onScan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).dividerColor.withOpacity(
                    .06,
                  ),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(
                0,
                2,
              ), // changes position of shadow
            ),
          ],
        ),
        // padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
        child: TextButton(
          onPressed: onSearch,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Search",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
