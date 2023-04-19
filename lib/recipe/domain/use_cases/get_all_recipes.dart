

import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/recipe.dart';
import '../repositories/recipe_repository.dart';

class GetAllResipsUsecase{
  final RecipeRespository respository;
  GetAllResipsUsecase(this.respository);
  Future<Either<Failure,List<Recipe>>> call()async
  {
          return await respository.getAllRecipes();
  }
}