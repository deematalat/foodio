
import 'package:flutter/material.dart';
import 'package:foodio/theme/app_decoration.dart';

import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_style.dart';

class TagItem extends StatelessWidget {
  final String tagName;
  const TagItem({Key? key, required this.tagName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
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
        tagName,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: AppStyle.txtSofiaProRegular12,
      )
    );
  }
}
