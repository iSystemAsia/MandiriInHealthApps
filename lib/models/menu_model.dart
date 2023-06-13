import 'package:flutter/cupertino.dart';

class MenuModel {
  final int id;
  final String title;
  final String route;
  final IconData? icon;
  final Color? color;

  MenuModel({
    required this.id,
    required this.title,
    required this.route,
    this.icon,
    this.color,
  });
}
