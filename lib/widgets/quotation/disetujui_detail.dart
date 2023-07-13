import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class DisetujuiDetail extends StatelessWidget {
  final QuotationModel item;
  const DisetujuiDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "TOTAL PESERTA DISETUJUI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTotalPesertaDiSetujui ?? "",
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
                "TOTAL PEGAWAI DISETUJUI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTotalPegawaiDiSetujui ?? "",
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
                "MAX USIA DEWASA DISETUJUI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMaxUsiaDewasaDiSetujui ?? "",
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
                "MAX USIA ANAK DISETUJUI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMaxUsiaAnakDisetujui ?? "",
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
                "MAX JUMLAH ANAK DISETUJUI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMaxJumlahAnakDiSetujui ?? "",
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
                "MAX USIA PERSALINAN DISETUJUI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMaxUsiaPersalinanDiSetujui ?? "",
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
                "MAX JUMLAH PERSALINAN DISETUJUI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMaxJumlahPersalinanDisetujui ?? "",
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
