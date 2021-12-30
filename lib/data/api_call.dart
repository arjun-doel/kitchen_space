import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:kitchen_space/data/model.dart';

Future<Meal> fetchMeal() async {
  var url = 'www.themealdb.com/api/json/v1/1/search.php?s=Arrabiata';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return Meal.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load meal');
  }
}
