
import 'package:equatable/equatable.dart';

abstract class RecipesEvent extends Equatable {
  const RecipesEvent();

  @override
  List<Object> get props => [];
}

class GetAllRecipesEvent extends RecipesEvent {}
