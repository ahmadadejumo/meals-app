// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String CategoryId;
  // final String CategoryTitle;

  // CategoryMealsScreen(this.CategoryId, this.CategoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final CategoryTitle = routeArgs["title"];
    final CategoryId = routeArgs["id"];
    return Scaffold(
      appBar: AppBar(
        title: Text(CategoryTitle.toString()),
      ),
      body: Center(
        child: Text("The recipes for the category"),
      ),
    );
  }
}
