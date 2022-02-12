import 'package:flutter/material.dart';
import 'package:my_app/dummy_data.dart';
import 'package:my_app/models/meal.dart';
import 'package:my_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = '/category-meals';

  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String? title = routeArgs['title'];
    final String? id = routeArgs['id'];
    final List<Meal> categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(meal: categoryMeals.elementAt(index));
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
