import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/recipe/presentation/home_screen/widgets/tagitem.dart';
import 'package:foodio/widgets/custom_icon_button.dart';
import '../../../domain/entities/recipe.dart';

class ListRecipeItemWidget extends StatelessWidget {
  final List<Recipe> recipes;
  final int index;

  ListRecipeItemWidget({required this.recipes, required this.index});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:(){
        Navigator.pushNamed(context,AppRoutes.foodDetailsScreen,
            arguments:{
          'index':index, 'recipes':recipes
            }
        );
      },
      child: IntrinsicWidth(
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: getMargin(
              right: 15,
            ),
            decoration: AppDecoration.outlineBluegray1003f2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(
                    130,
                  ),
                  width: getHorizontalSize(
                    260,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        fit:BoxFit.cover,
                         url:recipes[index].thumbnail_url,
                        height: getVerticalSize(
                          136,
                        ),
                        width: getHorizontalSize(
                          266,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: getPadding(
                            left: 11,
                            top: 10,
                            right: 10,
                            bottom: 97,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height:getSize(100),
                                padding: getPadding(
                                  all:3,
                                ),
                                decoration:
                                    AppDecoration.outlineDeeporange40033.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "4.5",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSofiaProSemiBold1169,
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgStar,
                                      height: getSize(
                                        14,
                                      ),
                                      width: getSize(
                                        9,
                                      ),
                                      margin: getMargin(
                                        left: 4,
                                        top: 1,
                                        bottom: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 2,
                                        top: 2,
                                      ),
                                      child: Text(
                                        "(25+)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSofiaProRegular819,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomIconButton(
                                height: 28,
                                width: 28,
                                variant: IconButtonVariant.OutlineDeeporange40066,
                                padding: IconButtonPadding.PaddingAll6,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgLightbulb,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 13,
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Flexible(

                        child:
                      Text(
                         recipes[index].name,
                        overflow: TextOverflow.ellipsis,
                        maxLines:1,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSofiaProSemiBold15Black900,
                      ),)

                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 13,
                    top: 7,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup17504,
                        height: getVerticalSize(
                          11,
                        ),
                        width: getHorizontalSize(
                          13,
                        ),
                        margin: getMargin(
                          top: 1,
                          bottom: 3,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 1,
                        ),
                        child: Text(
                          "Free delivery",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHelveticaNeue12,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup17503,
                        height: getVerticalSize(
                          12,
                        ),
                        width: getHorizontalSize(
                          10,
                        ),
                        margin: getMargin(
                          left: 17,
                          top: 1,
                          bottom: 2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                          bottom: 1,
                        ),
                        child: Text(
                          "10-15 mins",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHelveticaNeue12,
                        ),
                      ),
                    ],
                  ),
                ), //tags
                Padding(
                  padding: getPadding(
                    left: 13,
                    top: 8,
                    bottom: 14,
                  ),
                  child:  Wrap(
                     spacing:10,
                    children: [
                      TagItem(tagName:recipes[index].tags[0].name,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
