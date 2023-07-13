import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class KomisiDisetujuiDetail extends StatelessWidget {
  final QuotationModel item;
  const KomisiDisetujuiDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "KOMISI DISETUJUI (%)",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrKomisiPersentaseDiSetujui ?? "",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "OR DISETUJUI (%)",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrORPersentaseDiSetujui ?? "",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "IP DISETUJUI (%)",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrIPPersentaseDiSetujui ?? "",
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
