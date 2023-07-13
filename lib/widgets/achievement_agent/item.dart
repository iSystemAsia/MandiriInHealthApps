import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mandiri_in_health/models/achievement_agent_model.dart';
import 'package:mandiri_in_health/widgets/widget.dart';

class AchievementAgentItem extends StatelessWidget {
  const AchievementAgentItem({
    Key? key,
    this.item,
    this.onPressed,
  }) : super(key: key);

  final AchievementAgentModel? item;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    if (item == null) {
      return SizedBox(
        width: 120,
        child: AppPlaceholder(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: 120,
      child: GestureDetector(
        onTap: onPressed,
        child: Card(
          elevation: 2,
          margin: const EdgeInsets.all(0),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: CachedNetworkImage(
            imageUrl: item!.image?.full ?? '',
            imageBuilder: (context, imageProvider) {
              return Container(
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            item!.info,
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                  color: Color.fromARGB(255, 255, 255, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            item!.title,
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
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
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              );
            },
            errorWidget: (context, url, error) {
              return AppPlaceholder(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: const Icon(Icons.error),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
