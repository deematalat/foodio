import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

// ignore: must_be_immutable
class GridtenItemWidget extends StatelessWidget {
  GridtenItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        117,
      ),
      padding: getPadding(
        left: 30,
        top: 1,
        right: 52,
        bottom: 1,
      ),
      decoration: AppDecoration.txtOutlineBluegray400.copyWith(
        borderRadius: BorderRadiusStyle.txtRoundedBorder5,
      ),
      child: Text(
        "1",
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: AppStyle.txtSFProDisplayRegular25.copyWith(
          letterSpacing: getHorizontalSize(
            0.29,
          ),
        ),
      ),
    );
  }
}
