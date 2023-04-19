
import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/recipe/domain/entities/recipe.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_icon_button.dart';
import '../../../../widgets/custom_image_view.dart';
import 'appbar.dart';
import 'itemslist.dart';
import 'listburger_item_widget.dart';


class HomePageBody extends StatelessWidget {
  final List<Recipe> recipes;
    HomePageBody({Key? key, required this.recipes}) : super(key: key);
  final TextEditingController searchController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:
    Container(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomApBar(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: getHorizontalSize(
                272,
              ),
              margin: getMargin(
                left: 24,
                top: 20,
                right: 78,
              ),
              child: Text(
                "What would you like\nto order",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtSofiaProBold30,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 25,
              top: 19,
              right: 25,
            ),
            child: Row(
              children: [
                Expanded(child: Container(
                      padding: getPadding(
                        all: 5,
                      ),
                      decoration: AppDecoration.outlineGray20001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                          height: getSize(
                            55,
                          ),
                          width: getSize(
                            13,
                          ),
                          child:Center(
                            child: TextField(

                              cursorColor:ColorConstant.deepOrange400,
                                controller: searchController,
                                decoration: InputDecoration(
                                   suffix:
                                  IconButton(
                                    color:ColorConstant.deepOrange400,
                                    onPressed: (){
                                      Navigator.
                                      pushNamed(context,AppRoutes.searchScreen,
                                          arguments: {
                                            'recipes':recipes,
                                            'value':searchController.text
                                          }
                                      );
                                    },
                                    icon:Icon(Icons.search_sharp),
                                  ),
                                   hintText:"Find for food...",
                                  border:InputBorder.none
                                ),
                            ),
                          ),
                        ),),
                CustomIconButton(
                  height: 51,
                  width: 51,
                  margin: getMargin(
                    left: 18,
                  ),
                  variant: IconButtonVariant.OutlineBluegray507f,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSettingsDeepOrange400,
                  ),
                ),
              ],
            ),
          ),//TODO:SEARCH
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: getVerticalSize(
                128,
              ),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                padding: getPadding(
                  left: 25,
                  top: 30,
                ),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: getVerticalSize(
                      14,
                    ),
                  );
                },
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListburgerItemWidget();
                },
              ),
            ),
          ), //BURGERITEM
          ItemsList(
            listTitle: 'Featued Restaurants',
            viewALLOnTap: () {  },
            scrollDirection:Axis.horizontal,
            itemCount:5, recipes:recipes,
          ),
          ItemsList(listTitle: 'Popular Items',
            viewALLOnTap: () {  },
            itemCount:6, recipes: recipes,
            scrollDirection:Axis.horizontal,)
        ],
      ),
    ),
    );
  }
}
