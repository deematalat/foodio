import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_button.dart';
import 'package:foodio/widgets/custom_icon_button.dart';

class RatingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 26, top: 27, right: 26, bottom: 27),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(201),
                          width: getHorizontalSize(323),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(146),
                                        width: getHorizontalSize(323),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage79,
                                                  height: getVerticalSize(146),
                                                  width: getHorizontalSize(323),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(15)),
                                                  alignment: Alignment.center),
                                              CustomIconButton(
                                                  height: 38,
                                                  width: 38,
                                                  margin: getMargin(
                                                      left: 7, top: 10),
                                                  alignment: Alignment.topLeft,
                                                  onTap: () {
                                                    onTapBtnArrowleft(context);
                                                  },
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(52))),
                                        child: Container(
                                            height: getSize(104),
                                            width: getSize(104),
                                            padding: getPadding(all: 11),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder54),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector3,
                                                      height:
                                                          getVerticalSize(4),
                                                      width:
                                                          getHorizontalSize(6),
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: getMargin(
                                                          right: 14,
                                                          bottom: 13)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          color: ColorConstant
                                                              .amber400,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          40))),
                                                          child: Container(
                                                              height:
                                                                  getSize(81),
                                                              width:
                                                                  getSize(81),
                                                              padding:
                                                                  getPadding(
                                                                      left: 2,
                                                                      top: 1,
                                                                      right: 2,
                                                                      bottom:
                                                                          1),
                                                              decoration: AppDecoration
                                                                  .outlineAmber4004c
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder40),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                        child: Container(
                                                                            height: getSize(21),
                                                                            width: getSize(21),
                                                                            decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(10)), boxShadow: [
                                                                              BoxShadow(color: ColorConstant.gray40066, spreadRadius: getHorizontalSize(2), blurRadius: getHorizontalSize(2), offset: Offset(0, 2.39))
                                                                            ]))),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgImage29,
                                                                        height: getSize(
                                                                            56),
                                                                        width: getSize(
                                                                            56),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            28)),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgClockTeal500,
                                                                        height: getSize(
                                                                            15),
                                                                        width: getSize(
                                                                            15),
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomRight,
                                                                        margin: getMargin(
                                                                            right:
                                                                                3,
                                                                            bottom:
                                                                                3))
                                                                  ]))))
                                                ]))))
                              ])),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("Pizza Hut",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProSemiBold20)),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("4102  Pretty View Lanenda",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProRegular13Gray500)),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getSize(5),
                                    width: getSize(5),
                                    margin: getMargin(top: 4, bottom: 4),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.green400,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(2)))),
                                Padding(
                                    padding: getPadding(left: 4),
                                    child: Text("Order Delivered",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSofiaProLight14))
                              ])),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("Please Rate Delivery Service",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProSemiBold18Gray90001)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("Good",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProRegular22)),
                      Padding(
                          padding: getPadding(left: 48, top: 15, right: 47),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgStarAmber400,
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(32)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgStarAmber400,
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(32),
                                    margin: getMargin(left: 15)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgStarAmber400,
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(32),
                                    margin: getMargin(left: 15)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgStarAmber400,
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(32),
                                    margin: getMargin(left: 15)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgStarAmber40031x32,
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(32),
                                    margin: getMargin(left: 18))
                              ])),
                      Container(
                          margin: getMargin(top: 44, bottom: 5),
                          padding: getPadding(
                              left: 16, top: 20, right: 16, bottom: 20),
                          decoration: AppDecoration.outlineGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: getVerticalSize(128),
                                    child: VerticalDivider(
                                        width: getHorizontalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.amber400,
                                        endIndent: getHorizontalSize(104))),
                                Padding(
                                    padding: getPadding(
                                        left: 5, top: 2, bottom: 109),
                                    child: Text("Write review",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSofiaProRegular16Black90033))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(60),
                width: getHorizontalSize(248),
                text: "SUBMIT",
                margin: getMargin(left: 65, right: 62, bottom: 33),
                variant: ButtonVariant.OutlineDeeporange40040,
                padding: ButtonPadding.PaddingAll22,
                fontStyle: ButtonFontStyle.SofiaProSemiBold15)));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
