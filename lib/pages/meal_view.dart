import 'package:flutter/material.dart';
import 'package:kitchen_space/data/api_call.dart';
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
    if (meals) {
      setState(() {});
    }

    print(meals['strMeal']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 350,
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.favorite_border),
                  title: Text(
                    meals['strMeal'],
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.network(meals['strMealThumb']))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
