import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_icon_button.dart';

class PhoneRegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: getVerticalSize(75),
                                    width: getHorizontalSize(160),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse1263,
                                              height: getVerticalSize(75),
                                              width: getHorizontalSize(50),
                                              alignment: Alignment.centerLeft),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse1273,
                                              height: getVerticalSize(66),
                                              width: getHorizontalSize(160),
                                              alignment: Alignment.topCenter),
                                          CustomIconButton(
                                              height: 38,
                                              width: 38,
                                              margin: getMargin(left: 27),
                                              alignment: Alignment.bottomLeft,
                                              onTap: () {
                                                onTapBtnArrowleft(context);
                                              },
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft))
                                        ])),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1283,
                                    height: getVerticalSize(72),
                                    width: getHorizontalSize(77),
                                    margin: getMargin(bottom: 3))
                              ])),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 26),
                          child: Text("Registration",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProSemiBold3641)),
                      Container(
                          width: getHorizontalSize(217),
                          margin: getMargin(left: 26, top: 13),
                          child: Text(
                              "Enter your phone number to verify your account",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProRegular14)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 25, top: 28, right: 25),
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.outlineDeeporange400
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage117,
                                        height: getVerticalSize(30),
                                        width: getHorizontalSize(49),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(4)),
                                        margin: getMargin(bottom: 1)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgVector10,
                                        height: getVerticalSize(5),
                                        width: getHorizontalSize(10),
                                        margin: getMargin(
                                            left: 13, top: 13, bottom: 13)),
                                    Padding(
                                        padding: getPadding(
                                            left: 13,
                                            top: 5,
                                            right: 73,
                                            bottom: 8),
                                        child: Text("(+1) 230-333-0181",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtSofiaProRegular17))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(top: 51, bottom: 335),
                              decoration: AppDecoration.outlineIndigo30028
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder27),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: getPadding(
                                            left: 104,
                                            top: 20,
                                            right: 104,
                                            bottom: 20),
                                        decoration: AppDecoration
                                            .outlineIndigo300281
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder27),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text("Send",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSofiaProSemiBold15
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      1.2))))
                                            ]))
                                  ])))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
