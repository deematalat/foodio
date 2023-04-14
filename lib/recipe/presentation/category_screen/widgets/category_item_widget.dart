import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

// ignore: must_be_immutable
class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.maxFinite,
        child: Container(
          decoration: AppDecoration.outlineBluegray1003f3.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  179,
                ),
                width: getHorizontalSize(
                  323,
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          165,
                        ),
                        width: getHorizontalSize(
                          323,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage80,
                              height: getVerticalSize(
                                165,
                              ),
                              width: getHorizontalSize(
                                323,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  18,
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 13,
                                  top: 12,
                                  right: 12,
                                  bottom: 119,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        72,
                                      ),
                                      padding: getPadding(
                                        left: 9,
                                        top: 5,
                                        right: 9,
                                        bottom: 5,
                                      ),
                                      decoration: AppDecoration
                                          .txtOutlineDeeporange40033
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.txtCircleBorder17,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "\$",
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.deepOrange400,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Sofia Pro',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "10.35",
                                              style: TextStyle(
                                                color: ColorConstant.gray90001,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Sofia Pro',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgSave,
                                      height: getSize(
                                        34,
                                      ),
                                      width: getSize(
                                        34,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: getMargin(
                          left: 13,
                          top: 150,
                          right: 238,
                        ),
                        padding: getPadding(
                          left: 6,
                          top: 7,
                          right: 6,
                          bottom: 7,
                        ),
                        decoration: AppDecoration.outlineBluegray1004c.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Text(
                                "4.5",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSofiaProSemiBold1214,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar,
                              height: getVerticalSize(
                                9,
                              ),
                              width: getHorizontalSize(
                                10,
                              ),
                              margin: getMargin(
                                left: 4,
                                top: 2,
                                bottom: 2,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 3,
                                top: 3,
                                bottom: 2,
                              ),
                              child: Text(
                                "(25+)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSofiaProRegular85,
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
                child: Text(
                  "Chicken Hawaiian",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSofiaProSemiBold1821,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 13,
                  top: 10,
                  bottom: 13,
                ),
                child: Text(
                  "Chicken, Cheese and pineapple",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSofiaProRegular1457,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
