import 'widgets/listmenu_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/app_bar/appbar_iconbutton.dart';
import 'package:foodio/widgets/app_bar/appbar_image.dart';
import 'package:foodio/widgets/app_bar/appbar_title.dart';
import 'package:foodio/widgets/app_bar/custom_app_bar.dart';
import 'package:foodio/widgets/custom_button.dart';

class FavoritesFoodItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(84),
                leadingWidth: 64,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 26, top: 9, bottom: 9),
                    onTap: () => onTapArrowleft1(context)),
                centerTitle: true,
                title: AppbarTitle(text: "Favorites"),
                actions: [
                  AppbarImage(
                      height: getSize(38),
                      width: getSize(38),
                      imagePath: ImageConstant.imgImage1338x38,
                      margin: getMargin(left: 27, top: 9, right: 27, bottom: 9))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 26, right: 26),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(top: 23),
                          padding:
                              getPadding(left: 6, top: 4, right: 6, bottom: 4),
                          decoration: AppDecoration.outlineGray20002.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder27),
                          child: Row(children: [
                            CustomButton(
                                height: getVerticalSize(47),
                                width: getHorizontalSize(159),
                                text: "Food Items",
                                variant: ButtonVariant.OutlineBluegray10040,
                                shape: ButtonShape.RoundedBorder23,
                                padding: ButtonPadding.PaddingAll18,
                                fontStyle: ButtonFontStyle.SofiaProMedium14),
                            Padding(
                                padding:
                                    getPadding(left: 40, top: 16, bottom: 16),
                                child: Text("Resturents",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtSofiaProRegular14Deeporange400))
                          ])),
                      Padding(
                          padding: getPadding(top: 32),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(20));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ListmenuItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
