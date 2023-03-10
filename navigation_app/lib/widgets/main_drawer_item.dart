import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          color: Theme.of(context).accentColor,
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: Text(
            "cooking Up!",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Icon(
            Icons.restaurant,
            size: 26,
          ),
          title: Text(
            "Meals",
            style: TextStyle(
              fontFamily: "RobotoCondensed",
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 26,
          ),
          title: Text(
            "Filters",
            style: TextStyle(
              fontFamily: "RobotoCondensed",
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {},
        )
      ]),
    );
  }
}
