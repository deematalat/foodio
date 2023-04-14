import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

// ignore: must_be_immutable
class FoodDetailsItemWidget extends StatelessWidget {
  FoodDetailsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgMaskgroup39x39,
          height: getSize(
            39,
          ),
          width: getSize(
            39,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 9,
            top: 11,
            bottom: 10,
          ),
          child: Text(
            "Pepper  Julienned",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtHelveticaNeue14,
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 12,
            bottom: 9,
          ),
          child: Text(
            "+\$2.30",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtHelveticaNeue14,
          ),
        ),
        Container(
          height: getVerticalSize(
            23,
          ),
          width: getHorizontalSize(
            27,
          ),
          margin: getMargin(
            left: 7,
            top: 8,
            bottom: 8,
          ),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgRectangle125,
                height: getVerticalSize(
                  23,
                ),
                width: getHorizontalSize(
                  27,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getSize(
                    13,
                  ),
                  width: getSize(
                    13,
                  ),
                  margin: getMargin(
                    right: 4,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.deepOrange400,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        6,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.deepOrange40066,
                        spreadRadius: getHorizontalSize(
                          2,
                        ),
                        blurRadius: getHorizontalSize(
                          2,
                        ),
                        offset: Offset(
                          0,
                          4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
