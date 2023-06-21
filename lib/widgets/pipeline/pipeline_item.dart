import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/model.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';
import 'package:mandiri_in_health/widgets/widget.dart';

class PipelineItem extends StatelessWidget {
  const PipelineItem({
    Key? key,
    this.item,
    this.onPressed,
    required this.type,
    this.trailing,
  }) : super(key: key);

  final PipelineModel? item;
  final ProductViewType type;
  final VoidCallback? onPressed;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ProductViewType.grid:
        if (item == null) {
          return AppPlaceholder(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 10,
                  width: 80,
                  color: Colors.white,
                ),
                const SizedBox(height: 4),
                Container(
                  height: 10,
                  width: 100,
                  color: Colors.white,
                ),
                const SizedBox(height: 8),
                Container(
                  height: 24,
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
          );
        }

        return InkWell(
          onTap: onPressed,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: item!.image!.thumb,
                imageBuilder: (context, imageProvider) {
                  return Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Icon(
                                item!.MdrKomitmentAgen ?? false
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                placeholder: (context, url) {
                  return AppPlaceholder(
                    child: Container(
                      height: 120,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                errorWidget: (context, url, error) {
                  return AppPlaceholder(
                    child: Container(
                      height: 120,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: const Icon(Icons.error),
                    ),
                  );
                },
              ),
              const SizedBox(height: 8),
              Text(
                item!.MdrName,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                item?.kanal ?? '',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 8),
              Text(
                item!.MdrGWP ?? "",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
                textAlign: TextAlign.end,
              )
            ],
          ),
        );

      case ProductViewType.list:
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
          onTap: onPressed,
          child: Stack(
            children: [
              Row(
                children: <Widget>[
                  CachedNetworkImage(
                    imageUrl: item!.image!.thumb,
                    imageBuilder: (context, imageProvider) {
                      return Container(
                        width: 120,
                        height: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        // child: Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: <Widget>[
                        //     item!.kanal.isNotEmpty
                        //         ? Padding(
                        //             padding: const EdgeInsets.all(4),
                        //             child: AppTag(
                        //               item!.kanal,
                        //               type: TagType.status,
                        //             ),
                        //           )
                        //         : Container()
                        //   ],
                        // ),
                      );
                    },
                    placeholder: (context, url) {
                      return AppPlaceholder(
                        child: Container(
                          width: 120,
                          height: 140,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                        ),
                      );
                    },
                    errorWidget: (context, url, error) {
                      return AppPlaceholder(
                        child: Container(
                          width: 120,
                          height: 140,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                          child: const Icon(Icons.error),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item!.MdrName,
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          item?.kanal ?? '',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.phone_outlined,
                              size: 12,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(item!.MdrNoTelp ?? "",
                                  maxLines: 1,
                                  style: Theme.of(context).textTheme.bodySmall),
                            )
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on_outlined,
                              size: 12,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                item!.MdrAlamat ?? "",
                                maxLines: 1,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 4),
                            Text(
                              item!.MdrGWP ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Icon(
                  item!.MdrKomitmentAgen ?? false ? Icons.favorite : Icons.favorite_border,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )
            ],
          ),
        );

      case ProductViewType.block:
        if (item == null) {
          return AppPlaceholder(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 8),
                      Container(
                        height: 10,
                        width: 150,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 4),
                      Container(
                        height: 10,
                        width: 200,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 10,
                        width: 150,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 4),
                      Container(
                        height: 10,
                        width: 150,
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
          onTap: onPressed,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: item!.image!.thumb,
                imageBuilder: (context, imageProvider) {
                  return Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // item!.kanal.isNotEmpty
                              //     ? AppTag(
                              //         item!.kanal,
                              //         type: TagType.status,
                              //       )
                              //     : Container(),
                              Icon(
                                item!.MdrKomitmentAgen ?? false
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                placeholder: (context, url) {
                  return AppPlaceholder(
                    child: Container(
                      height: 200,
                      color: Colors.white,
                    ),
                  );
                },
                errorWidget: (context, url, error) {
                  return AppPlaceholder(
                    child: Container(
                      height: 200,
                      color: Colors.white,
                      child: const Icon(Icons.error),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 8),
                              Text(
                                item!.MdrName,
                                maxLines: 1,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                item?.kanal ?? '',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            Text(
                              item!.MdrGWP ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone_outlined,
                          size: 12,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            item!.MdrNoTelp ?? "",
                            maxLines: 1,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on_outlined,
                          size: 12,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            item!.MdrAlamat ?? "",
                            maxLines: 1,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );

      default:
        return Container(width: 160.0);
    }
  }
}
