import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:foodio/recipe/bloc/recipe_event.dart';
import 'package:foodio/recipe/bloc/recipe_state.dart';
import 'package:foodio/recipe/domain/entities/recipe.dart';
import 'package:foodio/recipe/domain/use_cases/get_all_recipes.dart';

import '../../core/constants/constants.dart';
import '../../core/error/failure.dart';


class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  final  GetAllResipsUsecase  getAllResips;
  RecipesBloc( {
    required this.getAllResips,
  }) : super(PostsInitial()) {
    on<RecipesEvent>((event, emit) async {
      if (event is GetAllRecipesEvent) {
        emit(LoadingRecipesState());

        final failureOrPosts = await getAllResips();
        emit(_mapFailureOrPostsToState(failureOrPosts));
      }
    });
  }

  RecipesState _mapFailureOrPostsToState(Either<Failure, List<Recipe>> either) {
    return either.fold(
          (failure) => ErrorRecipesState(message: _mapFailureToMessage(failure)),
          (recipes) => LoadedRecipesState(
              recips: recipes
      ),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case EmptyCacheFailure:
        return EMPTY_CACHE_FAILURE_MESSAGE;
      case OfflineFailure:
        return OFFLINE_FAILURE_MESSAGE;
      default:
        return "Unexpected Error , Please try again later .";
    }
  }
}