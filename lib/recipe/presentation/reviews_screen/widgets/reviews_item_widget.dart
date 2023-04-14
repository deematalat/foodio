import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

// ignore: must_be_immutable
class ReviewsItemWidget extends StatelessWidget {
  ReviewsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: getVerticalSize(
            144,
          ),
          width: getHorizontalSize(
            312,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: getPadding(
                    left: 67,
                    top: 10,
                  ),
                  child: Text(
                    "Alyce Lambo\r",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSofiaProRegular15Black900,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    144,
                  ),
                  width: getHorizontalSize(
                    312,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: getVerticalSize(
                            48,
                          ),
                          width: getHorizontalSize(
                            53,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle4109,
                                height: getSize(
                                  48,
                                ),
                                width: getSize(
                                  48,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    24,
                                  ),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: getSize(
                                    18,
                                  ),
                                  width: getSize(
                                    18,
                                  ),
                                  margin: getMargin(
                                    bottom: 4,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgTrash,
                                        height: getSize(
                                          18,
                                        ),
                                        width: getSize(
                                          18,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            right: 2,
                                          ),
                                          child: Text(
                                            "5.0",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtSofiaProSemiBold856,
                                          ),
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
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 68,
                              ),
                              child: Text(
                                "25/06/2020",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSofiaProRegular13Gray40001,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                312,
                              ),
                              margin: getMargin(
                                top: 21,
                              ),
                              child: Text(
                                "Really convenient and the points system helps benefit loyalty. Some mild glitches here and there, but nothing too egregious. Obviously needs to roll out to more remote.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtSofiaProRegular15Bluegray40005,
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
        CustomImageView(
          svgPath: ImageConstant.imgGroup17764,
          height: getVerticalSize(
            12,
          ),
          width: getHorizontalSize(
            4,
          ),
          margin: getMargin(
            top: 13,
            bottom: 119,
          ),
        ),
      ],
    );
  }
}
