import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';

class PengajuanDetail extends StatelessWidget {
  final QuotationModel item;
  const PengajuanDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "TOTAL PESERTA PENGAJUAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTotalPesertaPengajuan ?? "",
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
                "TOTAL PEGAWAI PENGAJUAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTotalPegawaiPengajuan ?? "",
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
                "MAX USIA DEWASA PENGAJUAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMaxUsiaDewasaPengajuan ?? "",
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
                "MAX USIA ANAK PENGAJUAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MaxUsiaAnakPengajuan ?? "",
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
                "MAX JUMLAH ANAK PENGAJUAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMaxJumlahAnakPengajuan ?? "",
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
                "MAX USIA PERSALINAN PENGAJUAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMaxUsiaPersalinanPengajuan ?? "",
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
                "MAX JUMLAH PERSALINAN PENGAJUAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrMaxJumlahPersalinanPengajuan ?? "",
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
