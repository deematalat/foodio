
import 'package:foodio/recipe/data/data_sources/recipe_remote_data_source.dart';
import 'package:foodio/recipe/data/repositories/recipe_repostitory_impl.dart';
import 'package:foodio/recipe/domain/repositories/recipe_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../recipe/bloc/recipe_bloc.dart';
import '../../recipe/data/data_sources/recipe_local_data_source.dart';
import '../../recipe/domain/use_cases/get_all_recipes.dart';
import '../networkinfo.dart';

final sl = GetIt.instance;

Future<void> init() async {
//! Features - posts

// Bloc

  sl.registerFactory(() => RecipesBloc(getAllResips:sl()));
// Usecases

  sl.registerLazySingleton(() => GetAllResipsUsecase(sl()));

// Repository

  sl.registerLazySingleton<RecipeRespository>(() =>  RecipRepositoryImpl(
      remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));

// Datasources

  sl.registerLazySingleton<RecipeRemoteDataSource>(
          () => RecipeRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<RecipeLocalDataSource>(
          () => RecipeLocalDataSourceImpl(sharedPreferences: sl()));

//! Core

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

//! External


  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}