
import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../domain/entities/recipe.dart';
import 'listmaskgroup_item_widget.dart';
class ItemsList extends StatelessWidget {
  const ItemsList({Key? key, required this.listTitle, required this.viewALLOnTap, required this.scrollDirection, required this.itemCount, required this.recipes}) : super(key: key);
  final String listTitle;
  final Function() viewALLOnTap;
  final Axis scrollDirection;
  final List<Recipe> recipes;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: getPadding(
            left: 25,
            top: 28,
            right: 23,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                listTitle,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSofiaProSemiBold18,
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  top: 3,
                  bottom: 1,
                ),
                child: GestureDetector(
                  onTap:viewALLOnTap,
                  child:Row(
                    children: [
                      GestureDetector(
                        onTap:()
                        {
                           Navigator.pushNamed(context, AppRoutes.categoryScreen,);
                        },
                     child:Text(
                        "View All",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSofiaProRegular13,
                      ),),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getVerticalSize(
                          8,
                        ),
                        width: getHorizontalSize(
                          4,
                        ),
                        margin: getMargin(
                          left: 5,
                          top: 7,
                          bottom: 3,
                        ),
                      ),
                    ],
                  )
                ),
              ),//TODO:SHOW ALL ITEM

            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: getVerticalSize(
              245,
            ),
            child: ListView.separated(
              padding: getPadding(
                left: 26,
                top: 16,
              ),
              scrollDirection: scrollDirection,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: getVerticalSize(
                    15,
                  ),
                );
              },
              itemCount:itemCount,
              itemBuilder: (context, index) {
                return ListRecipeItemWidget(recipes:recipes, index:index+1,);
              },
            ),
          ),
        ),
      ],
    );
  }
}
