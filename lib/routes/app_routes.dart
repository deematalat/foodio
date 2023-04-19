import 'package:flutter/material.dart';
import 'package:foodio/recipe/presentation/home_screen/search_screen.dart';
import '../recipe/presentation/category_screen/category_screen.dart';
import '../recipe/presentation/favorites_food_items_screen/favorites_food_items_screen.dart';
import '../recipe/presentation/food_details_screen/food_details_screen.dart';
import '../recipe/presentation/home_screen/home_screen.dart';
import '../recipe/presentation/splash_screen/splash_screen.dart';
import '../recipe/presentation/welcome_screen/welcome_screen.dart';


class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';





  static const String homeScreen = '/home_screen';

  static const String foodDetailsScreen = '/food_details_screen';

  static const String categoryScreen = '/category_screen';

  static const String favoritesFoodItemsScreen = '/favorites_food_items_screen';


  static const String  searchScreen = '/search_screen';


  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    homeScreen: (context) => HomeScreen(),
    foodDetailsScreen: (context) => FoodDetailsScreen(),
    categoryScreen: (context) => CategoryScreen(),
    favoritesFoodItemsScreen: (context) => FavoritesFoodItemsScreen(),
    searchScreen: (context) => SearchScreen(),
  };
}
