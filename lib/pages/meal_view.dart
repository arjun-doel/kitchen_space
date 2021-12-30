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
    print(meals['strMeal']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.favorite_border),
                title: Text(meals['strMeal']),
              ),
              const SizedBox(
                width: 10,
                height: 50,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Image.network(meals['strMealThumb']),
              )
            ],
          ),
        ),
      ),
    );
  }
}
