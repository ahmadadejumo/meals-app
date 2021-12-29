// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:mealsapp/widget/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);
  static const routeName = "/filters";

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _gluttenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwitchListTile(
      String title, String description, bool currentValue, updateValue) {
    return SwitchListTile(
      value: currentValue,
      onChanged: updateValue,
      title: Text(
        title,
      ),
      subtitle: Text(
        description,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your filters"),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal selection",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  "Glutten-free",
                  "only include glutten-free meals",
                  _gluttenFree,
                  (newValue) {
                    setState(
                      () {
                        newValue = _gluttenFree;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  "Lactose-free",
                  "Only include lactose-free meals",
                  _lactoseFree,
                  (newValue) {
                    setState(
                      () {
                        newValue = _lactoseFree;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  "Vegtarian",
                  "Only include vegetarian meals",
                  _vegetarian,
                  (newValue) {
                    setState(
                      () {
                        newValue = _vegetarian;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  "Vegan",
                  "Only include vegan meals",
                  _vegan,
                  (newValue) {
                    setState(
                      () {
                        newValue = _vegan;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
