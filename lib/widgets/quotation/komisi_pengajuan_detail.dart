import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class KomisiPengajuanDetail extends StatelessWidget {
  final QuotationModel item;
  const KomisiPengajuanDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "KOMISI PENGAJUAN (%)",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrKomisiPersentasePengajuan ?? "",
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
                "OR PERNGAJUAN (%)",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrORPersentasePengajuan ?? "",
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
                "IP PENGAJUAN (%)",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrIPPersentasePengajuan ?? "",
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
