import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

// ignore: must_be_immutable
class ListmenuItemWidget extends StatelessWidget {
  ListmenuItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                180,
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
                            imagePath: ImageConstant.imgImage80165x323,
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
                                    height: getVerticalSize(
                                      34,
                                    ),
                                    width: getHorizontalSize(
                                      81,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgMenuWhiteA700,
                                          height: getVerticalSize(
                                            34,
                                          ),
                                          width: getHorizontalSize(
                                            81,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              17,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 8,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "\$",
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .deepOrange400,
                                                      fontSize: getFontSize(
                                                        11.902260780334473,
                                                      ),
                                                      fontFamily: 'TT Commons',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "12.20",
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .gray90001,
                                                      fontSize: getFontSize(
                                                        24.589282989501953,
                                                      ),
                                                      fontFamily: 'TT Commons',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                      ],
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
                      height: getVerticalSize(
                        29,
                      ),
                      width: getHorizontalSize(
                        71,
                      ),
                      margin: getMargin(
                        left: 13,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                29,
                              ),
                              width: getHorizontalSize(
                                71,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    14,
                                  ),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstant.deepOrange40033,
                                    spreadRadius: getHorizontalSize(
                                      2,
                                    ),
                                    blurRadius: getHorizontalSize(
                                      2,
                                    ),
                                    offset: Offset(
                                      0,
                                      6.07,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 9,
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
                                    bottom: 9,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    16,
                                  ),
                                  margin: getMargin(
                                    left: 3,
                                    top: 1,
                                  ),
                                  child: Text(
                                    "(25+)",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSofiaProRegular85Gray500,
                                  ),
                                ),
                              ],
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
                top: 9,
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
    );
  }
}
