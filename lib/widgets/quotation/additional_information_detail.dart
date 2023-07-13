import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class AdditionalInformationDetail extends StatelessWidget {
  final QuotationModel item;
  const AdditionalInformationDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "BACKDATED MUTASI PESERTA",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.BackdateMutasiPeserta ?? "",
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
                "PRE EXISTING CONDITION",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.PreExistingCondition ?? "",
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
                "REFUND PREMI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.RefundPremi ?? "",
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
