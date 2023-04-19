

import 'dart:convert';
import '../../../../core/error/exceptions.dart';
import 'package:http/http.dart' as http;

import '../models/recipe_model.dart';

abstract class RecipeRemoteDataSource {
  Future<List<RecipeModel>>getAllRecips();
}

const BASE_URL = "https://tasty.p.rapidapi.com/";
Map<String, String> queryParams = {
  'from': '0',
  'size': '20',
  'tags': 'under_30_minutes',
};

class RecipeRemoteDataSourceImpl implements RecipeRemoteDataSource {
  final http.Client client;

  RecipeRemoteDataSourceImpl({required this.client});
  @override
  Future<List<RecipeModel>> getAllRecips() async {
    final response = await client.get(
      Uri.parse(BASE_URL + "recipes/list?$queryParams",),

      headers: {
        'X-RapidAPI-Key': '0a51ec64a1msh085a020142ca147p1f0f59jsn883eca41c07d',
        'X-RapidAPI-Host': 'tasty.p.rapidapi.com'
      },
    );

    if (response.statusCode == 200) {
      final  Map<String, dynamic> decodedJson = json.decode(response.body) as Map<String, dynamic>;
      final List<dynamic> recipeList = decodedJson['results'] as List<dynamic>;
      print(recipeList);
      final List<RecipeModel> recipeModels = recipeList
          .map<RecipeModel>((jsonRecipeModel) => RecipeModel. fromJson(jsonRecipeModel))
          .toList();
      print("models error $recipeModels");
      return recipeModels;
    } else {
      throw ServerException();
    }
  }

}