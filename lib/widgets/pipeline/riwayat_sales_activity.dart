import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/model.dart';
import 'package:mandiri_in_health/models/riwayat_sales_activity_model.dart';
import 'package:mandiri_in_health/widgets/widget.dart';

class RiwayatSalesActivityItem extends StatelessWidget {
  const RiwayatSalesActivityItem({Key? key, this.item}) : super(key: key);

  final RiwayatSalesActivityModel? item;

  @override
  Widget build(BuildContext context) {
    if (item == null) {
      return AppPlaceholder(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 120,
              height: 140,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 8),
                  Container(
                    height: 10,
                    width: 80,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 10,
                    width: 100,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 20,
                    width: 80,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 10,
                    width: 100,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 10,
                    width: 80,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return InkWell(
      child: Stack(
        children: [
          Row(
            children: <Widget>[
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item!.MdrTanggalAktivitasTerkahir ?? "",
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item?.UpdateAktivitas ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item?.MdrKeteranganProgres ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      Text(
                        item!.MdrStatusAktifitas ?? "",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Icon(
              item!.MdrKomitmen ?? false
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }
}
