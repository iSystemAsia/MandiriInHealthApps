import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';

class DataPotensiBisnisNewBusinessDetail extends StatelessWidget {
  final PipelineModel item;
  const DataPotensiBisnisNewBusinessDetail({Key? key, required this.item}) : super(key: key);

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
                "TERMIN BAYAR",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.TerminBayar!,
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
                "PERKIRAAN CLOSING",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.PerkiraanClosing ?? "",
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
                item.MdrGWP ?? "",
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
                item.Quotation ?? "",
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
                "KOMITMEN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrKomitmentAgen! ? "YES" : "NO",
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
                "KOMITMEN KA. UNIT",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrKomitmenKaUnit! ? "YES" : "NO",
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
