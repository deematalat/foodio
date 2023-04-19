import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/error/exceptions.dart';
import '../models/recipe_model.dart';


abstract class RecipeLocalDataSource {
  Future<List<RecipeModel>> getCachedRecips();
  Future<Unit> cacheRecipe(List<RecipeModel> recipeModels);
}

const CACHED_RECIPS = "CACHED_RECIPS";

class RecipeLocalDataSourceImpl implements RecipeLocalDataSource {
  final SharedPreferences sharedPreferences;

  RecipeLocalDataSourceImpl({required this.sharedPreferences});
  @override
  Future<Unit> cacheRecipe(List<RecipeModel> recipeModels) {
    List recipeModelsToJson = recipeModels
        .map<Map<String, dynamic>>((resModel) => resModel.toJson())
        .toList();
    sharedPreferences.setString(CACHED_RECIPS, json.encode(recipeModelsToJson));
    return Future.value(unit);
  }

  @override
  Future<List<RecipeModel>>  getCachedRecips() {
    final jsonString = sharedPreferences.getString(CACHED_RECIPS);
    if (jsonString != null) {
      List decodeJsonData = json.decode(jsonString);
      List<RecipeModel> jsonToPostModels = decodeJsonData
          .map<RecipeModel>((jsonRecipeModel) => RecipeModel.fromJson(jsonRecipeModel))
          .toList();
      return Future.value(jsonToPostModels);
    } else {
      throw EmptyCacheException();
    }
  }

}