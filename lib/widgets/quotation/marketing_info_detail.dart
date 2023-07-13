import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class MarketingInfoDetail extends StatelessWidget {
  final QuotationModel item;
  const MarketingInfoDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "CATATAN MARKETING",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanMarketing ?? "",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ]);
  }
}
