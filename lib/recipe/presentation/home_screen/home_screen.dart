import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodio/recipe/bloc/recipe_bloc.dart';
import 'package:foodio/recipe/bloc/recipe_state.dart';
import 'package:foodio/recipe/presentation/home_screen/widgets/appbar.dart';
import 'package:foodio/recipe/presentation/home_screen/widgets/home_page_body.dart';

import '../../../core/utils/loading_widget.dart';
import '../../../widgets/massage_display.dart';
import '../home_screen/widgets/listburger_item_widget.dart';
import '../home_screen/widgets/listmaskgroup_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_icon_button.dart';

class HomeScreen extends StatelessWidget {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body:_buildBody(),
      ),
    );
  }
  
}


Widget _buildBody() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: BlocBuilder<RecipesBloc,RecipesState>(
      builder: (context, state) {
        if (state is LoadingRecipesState) {
          return LoadingWidget();
        } else if (state is LoadedRecipesState) {
          return HomePageBody(recipes: state.recips,);
        } else if (state is ErrorRecipesState) {
          return MessageDisplayWidget(message: state.message);
        }
        return LoadingWidget();
      },
    ),
  );
}
