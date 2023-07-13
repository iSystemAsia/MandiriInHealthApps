import 'package:flutter/material.dart';

class InfoDetail extends StatelessWidget {
  final String label;
  final String value;
  final Icon? icon;

  const InfoDetail(
      {Key? key,
      required this.label,
      required this.value,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        InkWell(
          child: Row(
            children: <Widget>[
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).dividerColor,
                ),
                child: icon,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      label,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      value,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
