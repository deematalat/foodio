import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

// ignore: must_be_immutable
class ListburgerItemWidget extends StatelessWidget {
  ListburgerItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 14,
          ),
          padding: getPadding(
            all: 4,
          ),
          decoration: AppDecoration.outlineDeeporange40040.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder27,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage134,
                height: getSize(
                  49,
                ),
                width: getSize(
                  49,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    24,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                  bottom: 16,
                ),
                child: Text(
                  "Burger",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSofiaProMedium11,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
