import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('There\'s no item - add favorite item'),
      );
    } else {
      return Center(
        child: ListView.builder(
          itemBuilder: (ctx, i) {
            return MealItem(
              id: favoriteMeals[i].id,
              title: favoriteMeals[i].title,
              imageUrl: favoriteMeals[i].imageUrl,
              duration: favoriteMeals[i].duration,
              affordability: favoriteMeals[i].affordability,
              complexity: favoriteMeals[i].complexity,
            );
          },
          itemCount: favoriteMeals.length,
        ),
      );
    }
  }
}
