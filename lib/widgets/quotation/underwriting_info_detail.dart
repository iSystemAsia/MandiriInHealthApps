import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class UnderwritingInfoDetail extends StatelessWidget {
  final QuotationModel item;
  const UnderwritingInfoDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "HEALTHTALK",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrHealthtalk! ? "YES" : "NO",
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
                "CATATAN HEALTHTALK",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanHealthtalk ?? "",
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
                "OVERSEAS",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrOverseas! ? "YES" : "NO",
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
                "CATATAN OVERSEAS",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanOverseas ?? "",
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
                "WELLNESSPROGRAM",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrWellnessProgram! ? "YES" : "NO",
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
                "CATATAN WELLNESS",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanWellnessProgram ?? "",
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
                "MEDIVAC",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMedivac! ? "YES" : "NO",
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
                "CATATAN MEDIVAC",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanMedivac ?? "",
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
                "MINIMCU",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMinimcu! ? "YES" : "NO",
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
                "CATATAN MINIMCU",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanMinimcu ?? "",
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
                "PICK UP CLAIM",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrPickUpClaim! ? "YES" : "NO",
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
                "CATATAN PICK UP CLAIM",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanPickUpClaim ?? "",
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
                "TELEMEDICINE",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTelemedicine! ? "YES" : "NO",
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
                "CATATAN TELEMEDICINE",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatamTelemedicine ?? "",
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
                "PROFIT SHARING",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrProfitSharing! ? "YES" : "NO",
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
                "CATATAN PROFIT SHARING",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrCatatanProfitSharing ?? "",
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
                "UNDERWRITING NOTES",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrUnderwritingNotes ?? "",
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
