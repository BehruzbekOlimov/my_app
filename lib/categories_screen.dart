import 'package:flutter/material.dart';
import 'package:my_app/category_item.dart';
import 'package:my_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  static const String  routeName = '/';

  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((category) => CategoryItem(title: category.name, color: category.color, id: category.id,)).toList(),
      ),
    );
  }
}
