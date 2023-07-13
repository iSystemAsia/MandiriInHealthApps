import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class EksesDetail extends StatelessWidget {
  final QuotationModel item;
  const EksesDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "EKSES DI TAGIH DI TEMPAT",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrEksesDiTagihDiTempat! ? "YES" : "NO",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "DEPOSIT EKSES",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrDepositEkses! ? "YES" : "NO",
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
                "JUMLAH DEPOSIT EKSES",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrJumlahDepositEkses ?? "",
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
                "TOP UP EKSES",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTopUpEkses ?? "",
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
                "VIRTUAL ACCOUNT EKSES",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrVirtualEkses!,
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
                "CATATAN EKSES",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanEkses ?? "",
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
