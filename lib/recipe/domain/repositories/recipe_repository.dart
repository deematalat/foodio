

import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/recipe.dart';

abstract class RecipeRespository{
  Future<Either<Failure,List<Recipe>>> getAllRecipes();
}