import 'package:http/http.dart' as http;
import 'dart:convert';

Future getMeals() async {
  try {
    var url = 'http://www.themealdb.com/api/json/v1/1/search.php?s=Arrabiata';
    var response = await http.get(Uri.parse(url));
    var json = jsonDecode(response.body);
    var meal = json['meals'][0];
    print(meal['strMeal']);
  } catch (e) {
    print(e.toString());
  }
}
