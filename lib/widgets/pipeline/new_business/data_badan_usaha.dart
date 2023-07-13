import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';

class DataBadanUsahaNewBusinessDetail extends StatelessWidget {
  final PipelineModel item;
  const DataBadanUsahaNewBusinessDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "NAMA BU",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrName,
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
                "KEPELIMIKAN BU",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KepemilikanBU ?? "",
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
                "NAMA DIREKSI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrNamaDireksi ?? "",
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
                "TANGGAL LAHIR DIREKSI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTanggalLahirDireksi ?? "",
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
                item.MdrPICName!,
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
                "NO. TELP",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrNoTelp ?? "",
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
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "KODE POS",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KodePosLookup ?? "",
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
                "KELURAHAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.Kelurahan ?? "",
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
                "KECAMATAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.Kecamatan ?? "",
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
                "KABUPATEN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.Kabupaten ?? "",
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
                "PROVINSI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.Provinsi ?? "",
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
                "ALAMAT",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrAlamat ?? "",
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
                "WILAYAH BADAN USAHA",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.WilayahBadanUsaha ?? "",
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
                "PROVINSI WILAYAH BU",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrProvinsiWilayahBU ?? "",
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
                "SEKTOR INDUSRTI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.SektorIndustri ?? "",
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
                "SINERGI BANK MANDIRI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.SinergiBankMandiri ?? "",
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
                "KETERANGAN SINERGI BANK MANDIRI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrKeteranganSinergiBankMandiri ?? "",
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
