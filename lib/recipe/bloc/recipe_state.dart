

import 'package:equatable/equatable.dart';
import 'package:foodio/recipe/domain/entities/recipe.dart';

abstract class RecipesState extends Equatable {
  const RecipesState();

  @override
  List<Object> get props => [];
}

class PostsInitial extends RecipesState {}

class LoadingRecipesState extends RecipesState {}

class LoadedRecipesState extends RecipesState {
  final List<Recipe> recips;

  LoadedRecipesState({required this.recips});

  @override
  List<Object> get props => [recips];
}

class ErrorRecipesState extends RecipesState {
  final String message;

  ErrorRecipesState({required this.message});

  @override
  List<Object> get props => [message];
}