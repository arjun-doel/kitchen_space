import 'package:flutter/material.dart';
import 'package:kitchen_space/pages/meal_view.dart';

void main() => runApp(HomeView());

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MealView(),
    );
  }
}
