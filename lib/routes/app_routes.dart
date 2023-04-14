import 'package:flutter/material.dart';

import '../recipe/presentation/app_navigation_screen/app_navigation_screen.dart';
import '../recipe/presentation/category_screen/category_screen.dart';
import '../recipe/presentation/favorites_food_items_screen/favorites_food_items_screen.dart';
import '../recipe/presentation/food_details_screen/food_details_screen.dart';
import '../recipe/presentation/home_screen/home_screen.dart';
import '../recipe/presentation/login_screen/login_screen.dart';
import '../recipe/presentation/phone_registration_screen/phone_registration_screen.dart';
import '../recipe/presentation/profile_screen/profile_screen.dart';
import '../recipe/presentation/rating_screen/rating_screen.dart';
import '../recipe/presentation/resset_password_screen/resset_password_screen.dart';
import '../recipe/presentation/reviews_screen/reviews_screen.dart';
import '../recipe/presentation/side_menu_screen/side_menu_screen.dart';
import '../recipe/presentation/sign_up_screen/sign_up_screen.dart';
import '../recipe/presentation/splash_screen/splash_screen.dart';
import '../recipe/presentation/vefification_code_screen/vefification_code_screen.dart';
import '../recipe/presentation/welcome_screen/welcome_screen.dart';


class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String vefificationCodeScreen = '/vefification_code_screen';

  static const String ressetPasswordScreen = '/resset_password_screen';

  static const String phoneRegistrationScreen = '/phone_registration_screen';

  static const String sideMenuScreen = '/side_menu_screen';

  static const String homeScreen = '/home_screen';

  static const String foodDetailsScreen = '/food_details_screen';

  static const String categoryScreen = '/category_screen';

  static const String favoritesFoodItemsScreen = '/favorites_food_items_screen';

  static const String profileScreen = '/profile_screen';

  static const String ratingScreen = '/rating_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    signUpScreen: (context) => SignUpScreen(),
    loginScreen: (context) => LoginScreen(),
    vefificationCodeScreen: (context) => VefificationCodeScreen(),
    ressetPasswordScreen: (context) => RessetPasswordScreen(),
    phoneRegistrationScreen: (context) => PhoneRegistrationScreen(),
    sideMenuScreen: (context) => SideMenuScreen(),
    homeScreen: (context) => HomeScreen(),
    foodDetailsScreen: (context) => FoodDetailsScreen(),
    categoryScreen: (context) => CategoryScreen(),
    favoritesFoodItemsScreen: (context) => FavoritesFoodItemsScreen(),
    profileScreen: (context) => ProfileScreen(),
    ratingScreen: (context) => RatingScreen(),
    reviewsScreen: (context) => ReviewsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
