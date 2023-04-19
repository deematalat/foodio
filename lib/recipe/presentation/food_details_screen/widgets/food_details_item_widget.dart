import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

// ignore: must_be_immutable
class FoodDetailsItemWidget extends StatelessWidget {
  final List recipes ;
  final int index;
  final int ind;
  FoodDetailsItemWidget(this.recipes, this.index, this.ind);

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
        Expanded(
            flex:1,
            child:Text(
            recipes[index].instructions[ind].display_text,
            overflow: TextOverflow.ellipsis,
            maxLines:1,
            textAlign: TextAlign.left,
            style: AppStyle.txtHelveticaNeue14,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
