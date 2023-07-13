import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/sales_activity_model.dart';

class ClosingItemDetail extends StatelessWidget {
  final SalesActivityModel item;
  const ClosingItemDetail({Key? key, required this.item}) : super(key: key);

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
                "KATEGORI ASURANSI EKSISTING",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.KategoriAsuransiEksisting ?? "",
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
                "ASURANSI EKSISTING",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.AsuransiEkisiting ?? "",
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
                "PRODUK ASURANSI SEBELUMNYA",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.ProdukAsuransiSebelumnya ?? "",
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
                "TMT",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrTMT ?? "",
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
                "PRODUK DITAWARKAN",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.ProdukDitawarkan ?? "",
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
                "HARGA PENAWARAN KOMPETITOR",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrHargaPenawaranKompetitor ?? "",
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
                "ASURANSI KOMPETITOR",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.AsuransiKompetitor ?? "",
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
                item.MdrTMB ?? "",
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
                "ALASAN MANDIRI TERPILIH",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                item.MdrAlasanMandiriTerpilih ?? "",
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
