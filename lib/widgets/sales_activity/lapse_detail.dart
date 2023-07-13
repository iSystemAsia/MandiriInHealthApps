import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/sales_activity_model.dart';

class LapseItemDetail extends StatelessWidget {
  final SalesActivityModel item;
  const LapseItemDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
                "NAMA BU",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.NamaBadanUsaha ?? "",
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
                "PREMI DI SETAHUNKAN",
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
                "KA. UNIT",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KepalaUnit ?? "",
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
                "AGEN ASURANSI",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.AgenAsuransi ?? "",
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
                "NAMA BROKER",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.NamaBroker ?? "",
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
                "TIPE PROSES",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.TipeProses ?? "",
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
                "HARGA PENAWARAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrHargaPenawaran ?? "",
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
                "KATEGORI ASURANSI PEMENANG",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KategoriAsuransiPemenang ?? "",
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
                "ASURANSI PEMENANG",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.AsuransiPemenang ?? "",
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
                "KATEGORI LAPSE 1",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KategoriLapse1 ?? "",
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
                "KATEGORI LAPSE 2",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KategoriLapse2 ?? "",
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
                "HARGA PENAWARAN PEMENANG",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrHargaPenawaranPemenang ?? "",
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
                "LOSS RASIO (%)",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrLossRasio ?? "",
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
                "ALASAN LAPSE",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrAlasanLapse ?? "",
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
