// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../widget/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String CategoryId;
  // final String CategoryTitle;

  // CategoryMealsScreen(this.CategoryId, this.CategoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs["title"];
    final categoryId = routeArgs["id"];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle.toString()),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
