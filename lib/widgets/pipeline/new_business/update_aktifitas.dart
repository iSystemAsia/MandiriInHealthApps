import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';

class UpdateAktifitasNewBusinessDetail extends StatelessWidget {
  final PipelineModel item;
  const UpdateAktifitasNewBusinessDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "UPDATE AKTIFITAS",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.UpdateAktifitas!,
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
                "STATUS AKTIFITAS",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrStatusAktivitas ?? "",
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
                "TANGGAL AKTIFITAS TERAKHIR",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTanggalAktifitasBerkahir ?? "",
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
                "KETERANGAN PROGRES",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrKeteranganProgres ?? "",
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
