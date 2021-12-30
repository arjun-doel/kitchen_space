import 'package:flutter/material.dart';
import 'package:kitchen_space/pages/meal_view.dart';

void main() => runApp(HomeView());

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  final backgroundColor = const Color(0x00f2cc8f);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kitchen Space',
      theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
      home: const MealView(),
    );
  }
}
