import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_icon_button.dart';

class ListRecipeItemWidget extends StatelessWidget {
  ListRecipeItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
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
                  136,
                ),
                width: getHorizontalSize(
                  266,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMaskgroup,
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
                              padding: getPadding(
                                all: 7,
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
                                      9,
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
                    Text(
                      "McDonald’s",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSofiaProSemiBold15Black900,
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        left: 5,
                        top: 2,
                        bottom: 2,
                      ),
                      color: ColorConstant.teal500,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5,
                          ),
                        ),
                      ),
                      child: Container(
                        height: getSize(
                          10,
                        ),
                        width: getSize(
                          10,
                        ),
                        padding: getPadding(
                          all: 3,
                        ),
                        decoration: AppDecoration.fillTeal500.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgVector3,
                              height: getVerticalSize(
                                2,
                              ),
                              width: getHorizontalSize(
                                3,
                              ),
                              alignment: Alignment.topCenter,
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
              ),
              //tags
              Padding(
                padding: getPadding(
                  left: 13,
                  top: 8,
                  bottom: 14,
                ),
                child: Row(
                  children: [
                    Container(
                      width: getHorizontalSize(
                        54,
                      ),
                      padding: getPadding(
                        left: 6,
                        top: 4,
                        right: 6,
                        bottom: 4,
                      ),
                      decoration: AppDecoration.txtFillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                      ),
                      child: Text(
                        "Burger",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSofiaProRegular12,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        60,
                      ),
                      margin: getMargin(
                        left: 8,
                      ),
                      padding: getPadding(
                        left: 7,
                        top: 4,
                        right: 7,
                        bottom: 4,
                      ),
                      decoration: AppDecoration.txtFillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                      ),
                      child: Text(
                        "Chicken",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSofiaProRegular12,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        70,
                      ),
                      margin: getMargin(
                        left: 8,
                      ),
                      padding: getPadding(
                        left: 6,
                        top: 4,
                        right: 6,
                        bottom: 4,
                      ),
                      decoration: AppDecoration.txtFillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                      ),
                      child: Text(
                        "Fast Food",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSofiaProRegular12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
