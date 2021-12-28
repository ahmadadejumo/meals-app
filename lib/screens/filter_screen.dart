// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mealsapp/widget/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);
  static const routeName = "/filters";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your filters"),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
