import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class GeneralInformationDetail extends StatelessWidget {
  final QuotationModel item;
  const GeneralInformationDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "TITLE",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.Title ?? "",
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
                "BU NAME",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.BUName ?? "",
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
                "DIREKSI NAME",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrDireksiName ?? "",
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
                "PIC NAME",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrPICName ?? "",
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
                "PHONE NUMBER",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrPhoneNumber!,
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
                "EMAIL",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrEmail ?? "",
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
                "AGENT NAME",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.AgentName ?? "",
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
                "KANAL DISTRIBUSI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KanalDistribusi ?? "",
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
                "KA. UNIT",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KAUNIT ?? "",
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
                "KA. KANAL",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KepalaKanal ?? "",
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
                "NAME ON CARD",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrNameOnCard ?? "",
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
                "ALIAS",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrAlias ?? "",
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
                "NO PROPOSAL",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrNoProposal ?? "",
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
                "BOOKING CODE",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrBookingCode ?? "",
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
                "TGL MULAI ASURANSI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrInsuranceStartDate ?? "",
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
                "TGL AKHIR ASURANSI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrInsuranceEndDate ?? "",
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
                "PRODUCT",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.Product ?? "",
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
                "SKEMA PRODUCT",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.SkemaProduct ?? "",
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
                "P",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrP! ? "YES" : "NO",
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
                "I",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrI! ? "YES" : "NO",
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
                "S",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrS! ? "YES" : "NO",
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
                "A",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrA! ? "YES" : "NO",
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
