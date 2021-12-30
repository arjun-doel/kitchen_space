import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:kitchen_space/data/model.dart';

Future<Meal> fetchMeal() async {
  var url = 'http://www.themealdb.com/api/json/v1/1/search.php?s=Arrabiata';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var json = jsonDecode(response.body);
    var meal = json['meals'][0];
    return Meal.fromJson(meal);
  } else {
    throw Exception('Failed to load meal');
  }
}
