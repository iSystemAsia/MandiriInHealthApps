import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';

class DataPotensiBisnisRenewalDetail extends StatelessWidget {
  final PipelineModel item;
  const DataPotensiBisnisRenewalDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "KODE BOOKING",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrKodeBooking!,
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
                "PRODUK",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.Produk ?? "",
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
                "POLIS STATUS",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.PolisStatus ?? "",
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
                "JUMLAH PESERTA",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrJumlahPeserta ?? "",
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
                "PAYMENT METHOD",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.PaymentMethod!,
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
                "PREMI DISETAHUNKAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrPremiDisetahunkan ?? "",
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
                "PREMI PER TERMIN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrPremiPerTermin ?? "",
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
                "PREMI/BULAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrPremiPerBulan ?? "",
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
                "TMT",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTmt ?? "",
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
                "TMB",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTmb ?? "",
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
                "RENEWAL JATUH TEMPO",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrRenewalJatuhTempo ?? "",
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
                "TAHUN PIPELINE",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTahunPipeline ?? "",
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
                "GWP",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrGWP!,
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
                "QUOTATION",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.Quotation!,
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
