import 'widgets/food_details_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/app_bar/appbar_iconbutton.dart';
import 'package:foodio/widgets/app_bar/custom_app_bar.dart';
import 'package:foodio/widgets/custom_icon_button.dart';

class FoodDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 17, top: 27, right: 17, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(206),
                              width: getHorizontalSize(323),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage55,
                                        height: getVerticalSize(206),
                                        width: getHorizontalSize(323),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(10)),
                                        alignment: Alignment.center),
                                    CustomAppBar(
                                        height: getVerticalSize(48),
                                        leadingWidth: 71,
                                        leading: AppbarIconbutton(
                                            svgPath: ImageConstant.imgArrowleft,
                                            margin: getMargin(left: 33),
                                            onTap: () =>
                                                onTapArrowleft(context)),
                                        actions: [
                                          CustomIconButton(
                                              height: 28,
                                              width: 28,
                                              margin: getMargin(
                                                  left: 43,
                                                  top: 5,
                                                  right: 43,
                                                  bottom: 5),
                                              variant: IconButtonVariant
                                                  .OutlineDeeporange40066,
                                              padding:
                                                  IconButtonPadding.PaddingAll6,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLightbulb))
                                        ])
                                  ]))),
                      Padding(
                          padding: getPadding(left: 5, top: 21),
                          child: Text("Ground Beef Tacos",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProSemiBold28)),
                      Padding(
                          padding: getPadding(left: 5, top: 16),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgStarAmber400,
                                height: getSize(17),
                                width: getSize(17)),
                            Padding(
                                padding: getPadding(left: 8, bottom: 2),
                                child: Text("4.5",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtSofiaProSemiBold14Gray90001)),
                            Padding(
                                padding: getPadding(left: 5, top: 1, bottom: 1),
                                child: Text("(30+)",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtSofiaProRegular14Gray500)),
                            Padding(
                                padding: getPadding(left: 9, bottom: 3),
                                child: Text("See Review",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtSofiaProRegular13Deeporange400
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)))
                          ])),
                      Padding(
                          padding: getPadding(left: 5, top: 10, right: 6),
                          child: Row(children: [
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "\$",
                                      style: TextStyle(
                                          color: ColorConstant.deepOrange400,
                                          fontSize:
                                              getFontSize(17.010637283325195),
                                          fontFamily: 'Sofia Pro',
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: "9.50",
                                      style: TextStyle(
                                          color: ColorConstant.deepOrange400,
                                          fontSize: getFontSize(31),
                                          fontFamily: 'Sofia Pro',
                                          fontWeight: FontWeight.w600))
                                ]),
                                textAlign: TextAlign.left),
                            Spacer(),
                            CustomIconButton(
                                height: 30,
                                width: 30,
                                margin: getMargin(top: 5, bottom: 6),
                                variant: IconButtonVariant.OutlineDeeporange400,
                                shape: IconButtonShape.CircleBorder15,
                                padding: IconButtonPadding.PaddingAll9,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgGroup17841)),
                            Padding(
                                padding:
                                    getPadding(left: 8, top: 12, bottom: 13),
                                child: Text("02",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSofiaProSemiBold16)),
                            CustomIconButton(
                                height: 30,
                                width: 30,
                                margin: getMargin(left: 11, top: 5, bottom: 6),
                                variant:
                                    IconButtonVariant.OutlineDeeporange40040,
                                shape: IconButtonShape.CircleBorder15,
                                padding: IconButtonPadding.PaddingAll9,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgPlus))
                          ])),
                      Container(
                          width: getHorizontalSize(317),
                          margin: getMargin(left: 5, top: 19, right: 18),
                          child: Text(
                              "Brown the beef better. Lean ground beef – I like to use 85% lean angus. Garlic – use fresh  chopped. Spices – chili powder, cumin, onion powder.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHelveticaNeue15)),
                      Padding(
                          padding: getPadding(left: 3, top: 20),
                          child: Text("Choice of Add On",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProSemiBold18)),
                      Padding(
                          padding: getPadding(top: 11, right: 6),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(9));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return FoodDetailsItemWidget();
                              }))
                    ])),
            bottomNavigationBar: Container(
                width: getHorizontalSize(167),
                margin: getMargin(left: 104, right: 104, bottom: 32),
                padding: getPadding(left: 23, top: 18, right: 23, bottom: 18),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgGroup17860),
                        fit: BoxFit.cover)),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(bottom: 1),
                          child: Text("Add to cart ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProRegular15))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
