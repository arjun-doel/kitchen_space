import 'package:flutter/material.dart';
import 'package:kitchen_space/data/api_call.dart';
import 'package:kitchen_space/data/model.dart';

class MealView extends StatefulWidget {
  const MealView({Key? key}) : super(key: key);

  @override
  _MealViewState createState() => _MealViewState();
}

class _MealViewState extends State<MealView> {
  late Future<Meal> futureMeal;

  @override
  void initState() {
    super.initState();
    futureMeal = fetchMeal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Meal>(
        future: futureMeal,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data!.name);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
