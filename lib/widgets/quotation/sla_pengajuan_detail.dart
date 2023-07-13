import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class SlaPengajuanDetail extends StatelessWidget {
  final QuotationModel item;
  const SlaPengajuanDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "SLA PEMBAYARAN PREMI PENGAJUAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.SLAPembayaranPremPengajuan ?? "",
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
                "SLA BAYAR KLAIM REIMBURSE",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.SLABayarKlaimReimburse ?? "",
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
                "KADALUARSA KLAIM REIMBURSE",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KadaluarsaKlaim ?? "",
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
                "KADALUARSA RE-KLAIM REIMBURSE",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KadaluarsaReKlaim ?? "",
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
