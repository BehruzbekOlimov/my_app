import 'package:flutter/material.dart';
import 'package:my_app/screens/FiltersScreen.dart';
import 'package:my_app/screens/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, VoidCallback tabHandler) {
    return InkWell(
      onTap: tabHandler,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(100),
        bottomRight: Radius.circular(100),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          size: 22,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              color: Theme.of(context).colorScheme.secondary,
              child: Text(
                'Drawer Header!',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(
              width: double.infinity,
              // padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
              child: Column(
                children: [
                  buildListTile(
                    'Meals',
                    Icons.restaurant_menu,
                    () {
                      Navigator.pushNamed(context, TabsScreen.routeName);
                    },
                  ),
                  buildListTile(
                    'Filters',
                    Icons.filter_alt_sharp,
                    () {
                      Navigator.pushNamed(context, FiltersScreen.routeName);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
