import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class TambahanDetail extends StatelessWidget {
  final QuotationModel item;
  const TambahanDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "ASO TYPE",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.ASOType ?? "",
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
                "PLAN ID",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.Plan ?? "",
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
                "ASO DEPOSIT AWAL",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrASODepositAwal ?? "",
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
                "ASO TOP UP",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrASOTopUP ?? "",
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
                "FEE ASO",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrFeeAso!,
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
                "VIRTUAL ASO",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrVirtualAso ?? "",
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
                "CATATAN ASO",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanAso ?? "",
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
                "POOLFUND 1",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrPoolfund1 ?? "",
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
                "BENEFIT/ SUBBENEFIT 2",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrBenefitSubenefit2! ? "YES" : "NO",
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
                "KATEGORI PENYAKIT 2",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrKategoriPenyakit2 ?? "",
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
                "POOLFUND 2",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrPoolfund2 ?? "",
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
                "BENEFIR/ SUBBENEFIT 3",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrBenefitSubenefit3! ? "YES" : "NO",
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
                "KATEGORI PENYAKIT 3",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrKategoriPenyakit3 ?? "",
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
                "POOLFUND 3",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrPoolfund3 ?? "",
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
                "CATATAN POOLFUND",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanPoolfund ?? "",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ]);
  }
}
