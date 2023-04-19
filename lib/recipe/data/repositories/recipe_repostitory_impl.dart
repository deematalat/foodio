
import 'package:dartz/dartz.dart';
import 'package:foodio/core/error/failure.dart';
import 'package:foodio/recipe/data/models/recipe_model.dart';
import '../../../core/error/exceptions.dart';
import '../../../core/networkinfo.dart';
import '../../domain/repositories/recipe_repository.dart';
import '../data_sources/recipe_local_data_source.dart';
import '../data_sources/recipe_remote_data_source.dart';

class RecipRepositoryImpl extends RecipeRespository
{
  final RecipeRemoteDataSource remoteDataSource;
  final RecipeLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  RecipRepositoryImpl({required this.remoteDataSource, required this.localDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, List<RecipeModel>>> getAllRecipes() async{
    if (await networkInfo.isConnected) {
      try {
        final remoteRecips = await remoteDataSource.getAllRecips();
        localDataSource.cacheRecipe(remoteRecips);
        return Right(remoteRecips);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localRecips = await localDataSource.getCachedRecips();
        return Right(localRecips);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

}