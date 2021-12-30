import 'package:flutter/material.dart';
import 'package:kitchen_space/helpers/api_call.dart';

class MealView extends StatefulWidget {
  const MealView({Key? key}) : super(key: key);

  @override
  _MealViewState createState() => _MealViewState();
}

class _MealViewState extends State<MealView> {
  var meals;

  @override
  void initState() {
    getValues();
  }

  getValues() async {
    meals = await getMeals();
    setState(() {});
    print(meals);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            children: const [
              Text('This is col title'),
            ],
          ),
        ),
      ),
    );
  }
}
