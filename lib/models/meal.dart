import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imgUrl;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity duration;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegeterian;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imgUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegeterian,
  });
}
