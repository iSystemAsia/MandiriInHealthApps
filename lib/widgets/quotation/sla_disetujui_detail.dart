import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class SlaDisetujuiDetail extends StatelessWidget {
  final QuotationModel item;
  const SlaDisetujuiDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "SLA PEMBAYARAN DISETUJUI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrSLAPembayaranPremiDiSetujui ?? "",
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
                "SLA PEMBAYARAN KLAIM DI SETUJUI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrSLAPembayaranKlaimDiSetujui ?? "",
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
                "KADALUARSA KLAIM",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrKadaluarsaKlaimDiSetujui ?? "",
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
                "RE-KLAIM DISETUJUI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrReKlaimDisetujui ?? "",
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
