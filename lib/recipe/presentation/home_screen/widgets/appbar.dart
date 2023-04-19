

import 'package:flutter/cupertino.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../widgets/app_bar/appbar_iconbutton.dart';
import '../../../../widgets/app_bar/appbar_image.dart';

class CustomApBar extends StatelessWidget {
  const CustomApBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        80,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width:64,
          child: AppbarIconbutton(
          svgPath: ImageConstant.imgMenuGray90001,
          margin: getMargin(
            left: 26,
            top: 10,
            bottom: 7,
          ),
        ),),
        AppbarImage(
          height: getSize(
            38,
          ),
          width: getSize(
            38,
          ),
          imagePath: ImageConstant.imgImage1338x38,
          margin: getMargin(
            left: 27,
            top: 10,
            right: 27,
            bottom: 7,
          ),
        ),
      ],
    ),);
  }
}
