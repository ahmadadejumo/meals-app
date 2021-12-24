// ignore_for_file: invalid_required_named_param

import 'package:flutter/material.dart';

class Category {
  final id;
  final title;
  final Color color;

  const Category({
    @required this.id,
    @required this.title,
    @required this.color = Colors.lightGreen,
  });
}
