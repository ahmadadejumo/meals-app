// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../widget/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = "/filters";

  final saveFilters;
  final Map<String, bool> currentFilters;

  FilterScreen(this.saveFilters, this.currentFilters);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _gluttenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  initState() {
    _gluttenFree = widget.currentFilters["glutten"] as bool;
    _lactoseFree = widget.currentFilters["lactose"] as bool;
    _vegan = widget.currentFilters["vegan"] as bool;
    _vegetarian = widget.currentFilters["vegetarian"] as bool;
    super.initState();
  }

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
        actions: [
          IconButton(
              onPressed: () {
                final selectedFilters = {
                  "glutten": _gluttenFree,
                  "lactose": _lactoseFree,
                  "vegan": _vegan,
                  "vegetarian": _vegetarian,
                };
                widget.saveFilters(selectedFilters);
              },
              icon: Icon(Icons.save))
        ],
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
