import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/model_image.dart';
import 'package:mandiri_in_health/widgets/app_placeholder.dart';

class TitleDetail extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final ImageModel? image;

  const TitleDetail({Key? key, this.title, this.subTitle, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];

    CachedNetworkImage imageContainer;
    if (image != null) {
      imageContainer = CachedNetworkImage(
        imageUrl: image!.full,
        placeholder: (context, url) {
          return AppPlaceholder(
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          );
        },
        imageBuilder: (context, imageProvider) {
          return Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          );
        },
        errorWidget: (context, url, error) {
          return AppPlaceholder(
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.error),
            ),
          );
        },
      );

      widgetList.add(imageContainer);
    }

    var titleItem = Container(
        constraints: const BoxConstraints(maxWidth: 280),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
        child: Text(title ?? "",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
            softWrap: false,
            maxLines: 2,
            overflow: TextOverflow.ellipsis));
    var subTitleItem = Text(
      subTitle ?? "",
      style: Theme.of(context).textTheme.labelLarge,
    );
    var textItemList = <Widget>[titleItem];
    if (subTitle != null) {
      textItemList.add(subTitleItem);
    }

    var textItem = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: textItemList,
    );

    if (image != null) {
      widgetList.add(const SizedBox(width: 8));
    }
    widgetList.add(textItem);

    return InkWell(
      child: Row(
        children: widgetList,
      ),
    );
  }
}
