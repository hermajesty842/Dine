import 'package:flutter/material.dart';

class Myrecipe {
  String label;
  String image;
  int servings;
  List<Ingredient> ingredients;
  static List<Myrecipe> samples = [
    Myrecipe('lasagna', 'Assets/images/lasagna.jpg', 4, [
      Ingredient(3, "oz", "Tomatopaste"),
      Ingredient(1, "tsp", "Dried oregano"),
      Ingredient(28, "oz", "Marinara"),
    ]),
    Myrecipe('grilled salmon', 'assets/images/grilled_salmon.jpg', 1, [
      Ingredient(1, "tsp", "Salt"),
      Ingredient(12, "oz", "Fillets"),
      Ingredient(2, "tbsp", "Olive-oil"),
    ]),
    Myrecipe('rice and meat', 'assets/images/rice_meat.jpg', 2, [
      Ingredient(1, "tsp", "salt"),
      Ingredient(12, "oz", "Rice"),
      Ingredient(12, "oz", "Meat"),
    ]),
    Myrecipe('Sandwich', 'assets/images/sandwich.jpg', 3, [
      Ingredient(1, "tsp", "Mayonnaise"),
      Ingredient(2, "tso", "Butter"),
      Ingredient(2, "tsp", "Mustard"),
    ]),
    Myrecipe('Broccoli and avocado', 'assets/images/broccoli_avocado.jpg', 4, [
      Ingredient(1.5, "lbs", "Broccoli"),
      Ingredient(2, "big", "Avocados"),
      Ingredient(1, "tsp", "Salt and Pepper"),
    ]),
  ];

  Myrecipe(this.label, this.image, this.servings, this.ingredients);
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
