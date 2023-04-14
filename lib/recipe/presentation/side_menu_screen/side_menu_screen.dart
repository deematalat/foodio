import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_radio_button.dart';

class SideMenuScreen extends StatelessWidget {
  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 32,
            bottom: 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 22,
                  top: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage13,
                          height: getSize(
                            90,
                          ),
                          width: getSize(
                            90,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              45,
                            ),
                          ),
                          margin: getMargin(
                            left: 4,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 18,
                          ),
                          child: Text(
                            "Farion Wick",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSofiaProSemiBold20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 9,
                          ),
                          child: Text(
                            "farionwick@gmail.com",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSofiaProRegular14Bluegray300,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 42,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getSize(
                                  23,
                                ),
                                width: getSize(
                                  23,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 4,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "My Orders",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProRegular16Black900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 33,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgUser,
                                height: getSize(
                                  23,
                                ),
                                width: getSize(
                                  23,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 4,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "My Profile",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProRegular16Black900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 33,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                                height: getSize(
                                  23,
                                ),
                                width: getSize(
                                  23,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 4,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "Delivery Address",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProRegular16Black900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 33,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCamera,
                                height: getSize(
                                  23,
                                ),
                                width: getSize(
                                  23,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 4,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "Payment Methods",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProRegular16Black900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 33,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgFile,
                                height: getSize(
                                  23,
                                ),
                                width: getSize(
                                  23,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 2,
                                  bottom: 4,
                                ),
                                child: Text(
                                  "Contact Us",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProRegular16Black900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 33,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgSettings,
                                height: getSize(
                                  23,
                                ),
                                width: getSize(
                                  23,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 4,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "Settings",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProRegular16Black900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 2,
                            top: 33,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgQuestion,
                                height: getSize(
                                  19,
                                ),
                                width: getSize(
                                  19,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 15,
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "Helps & FAQs",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProRegular16Black900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomRadioButton(
                          width: getHorizontalSize(
                            117,
                          ),
                          text: "Log Out",
                          iconSize: getHorizontalSize(
                            26,
                          ),
                          value: "lbl_log_out" "",
                          groupValue: radioGroup,
                          variant: RadioVariant.OutlineDeeporange40033,
                          shape: RadioShape.RoundedBorder21,
                          padding: RadioPadding.PaddingT11,
                          fontStyle: RadioFontStyle.SofiaProRegular16,
                          onChange: (value) {
                            radioGroup = value;
                          },
                        ),
                      ],
                    ),
                    Container(
                      height: getVerticalSize(
                        608,
                      ),
                      width: getHorizontalSize(
                        153,
                      ),
                      margin: getMargin(
                        top: 64,
                        bottom: 71,
                      ),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRestutrntprofile,
                            height: getVerticalSize(
                              514,
                            ),
                            width: getHorizontalSize(
                              153,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                21,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgHomescreendd1,
                            height: getVerticalSize(
                              604,
                            ),
                            width: getHorizontalSize(
                              119,
                            ),
                            alignment: Alignment.centerRight,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgHomescreen2,
                            height: getVerticalSize(
                              608,
                            ),
                            width: getHorizontalSize(
                              120,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                28,
                              ),
                            ),
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
