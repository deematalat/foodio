import '../home_screen/widgets/listburger_item_widget.dart';
import '../home_screen/widgets/listmaskgroup_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/app_bar/appbar_iconbutton.dart';
import 'package:foodio/widgets/app_bar/appbar_image.dart';
import 'package:foodio/widgets/app_bar/custom_app_bar.dart';
import 'package:foodio/widgets/custom_drop_down.dart';
import 'package:foodio/widgets/custom_icon_button.dart';

class HomeScreen extends StatelessWidget {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            80,
          ),
          leadingWidth: 64,
          leading: AppbarIconbutton(
            svgPath: ImageConstant.imgMenuGray90001,
            margin: getMargin(
              left: 26,
              top: 10,
              bottom: 7,
            ),
          ),
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomDropDown(
                width: getHorizontalSize(
                  72,
                ),
                focusNode: FocusNode(),
                icon: Container(
                  margin: getMargin(
                    left: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstant.gray50001,
                      width: getHorizontalSize(
                        1,
                      ),
                      strokeAlign: strokeAlignCenter,
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrowdownGray50001,
                  ),
                ),
                hintText: "Deliver to",
                margin: getMargin(
                  left: 39,
                  right: 41,
                ),
                items: dropdownItemList,
                onChanged: (value) {},
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  "4102  Pretty View Lane ",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSofiaProMedium15,
                ),
              ),
            ],
          ),
          actions: [
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
        ),
        body: SingleChildScrollView(child:
        Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: getHorizontalSize(
                    272,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 20,
                    right: 78,
                  ),
                  child: Text(
                    "What would you like\nto order",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSofiaProBold30,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 25,
                  top: 19,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: getPadding(
                          all: 18,
                        ),
                        decoration: AppDecoration.outlineGray20001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: getSize(
                                13,
                              ),
                              width: getSize(
                                13,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgLine7,
                                    height: getSize(
                                      3,
                                    ),
                                    width: getSize(
                                      3,
                                    ),
                                    alignment: Alignment.bottomRight,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgContrast,
                                    height: getSize(
                                      12,
                                    ),
                                    width: getSize(
                                      12,
                                    ),
                                    alignment: Alignment.topLeft,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 12,
                              ),
                              child: Text(
                                "Find for food or restaurant...",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtSofiaProRegular14Bluegray30001,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 51,
                      width: 51,
                      margin: getMargin(
                        left: 18,
                      ),
                      variant: IconButtonVariant.OutlineBluegray507f,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSettingsDeepOrange400,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    128,
                  ),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 25,
                      top: 30,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          14,
                        ),
                      );
                    },
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return ListburgerItemWidget();
                    },
                  ),
                ),
              ),
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
                      "Featured Restaurants",
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
                      child: Text(
                        "View All",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSofiaProRegular13,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: getVerticalSize(
                        6,
                      ),
                      width: getHorizontalSize(
                        3,
                      ),
                      margin: getMargin(
                        left: 5,
                        top: 7,
                        bottom: 3,
                      ),
                    ),
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
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          15,
                        ),
                      );
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ListRecipeItemWidget();
                    },
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  248,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 24,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 25,
                          right: 25,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Popular Items",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProSemiBold18,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 1,
                                top: 14,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: getMargin(
                                        right: 7,
                                      ),
                                      decoration:
                                          AppDecoration.fillWhiteA700.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              158,
                                            ),
                                            width: getHorizontalSize(
                                              154,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      147,
                                                    ),
                                                    width: getHorizontalSize(
                                                      154,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage10,
                                                          height:
                                                              getVerticalSize(
                                                            147,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            154,
                                                          ),
                                                          radius: BorderRadius
                                                              .circular(
                                                            getHorizontalSize(
                                                              15,
                                                            ),
                                                          ),
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                              134,
                                                            ),
                                                            margin: getMargin(
                                                              left: 10,
                                                              top: 10,
                                                              right: 10,
                                                              bottom: 109,
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                    28,
                                                                  ),
                                                                  width:
                                                                      getHorizontalSize(
                                                                    58,
                                                                  ),
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    children: [
                                                                      CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgMenuWhiteA700,
                                                                        height:
                                                                            getVerticalSize(
                                                                          28,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          58,
                                                                        ),
                                                                        radius:
                                                                            BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                            14,
                                                                          ),
                                                                        ),
                                                                        alignment:
                                                                            Alignment.center,
                                                                      ),
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              getPadding(
                                                                            left:
                                                                                7,
                                                                          ),
                                                                          child:
                                                                              RichText(
                                                                            text:
                                                                                TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: "\$",
                                                                                  style: TextStyle(
                                                                                    color: ColorConstant.deepOrange400,
                                                                                    fontSize: getFontSize(
                                                                                      9.801861763000488,
                                                                                    ),
                                                                                    fontFamily: 'TT Commons',
                                                                                    fontWeight: FontWeight.w400,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: "5.50",
                                                                                  style: TextStyle(
                                                                                    color: ColorConstant.gray90001,
                                                                                    fontSize: getFontSize(
                                                                                      20.249998092651367,
                                                                                    ),
                                                                                    fontFamily: 'TT Commons',
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                CustomIconButton(
                                                                  height: 28,
                                                                  width: 28,
                                                                  variant:
                                                                      IconButtonVariant
                                                                          .FillWhiteA70033,
                                                                  padding:
                                                                      IconButtonPadding
                                                                          .PaddingAll6,
                                                                  child:
                                                                      CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgLightbulb,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                    margin: getMargin(
                                                      left: 10,
                                                      top: 134,
                                                      right: 84,
                                                    ),
                                                    padding: getPadding(
                                                      left: 6,
                                                      top: 7,
                                                      right: 6,
                                                      bottom: 7,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineDeeporange400331
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "4.5",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSofiaProSemiBold10,
                                                        ),
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar,
                                                          height: getSize(
                                                            8,
                                                          ),
                                                          width: getSize(
                                                            8,
                                                          ),
                                                          margin: getMargin(
                                                            left: 3,
                                                            top: 1,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 2,
                                                            top: 1,
                                                            bottom: 1,
                                                          ),
                                                          child: Text(
                                                            "(25+)",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtSofiaProRegular7,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 6,
                                            ),
                                            child: Text(
                                              "Salmon Salad",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSofiaProSemiBold14,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 11,
                                              top: 9,
                                              bottom: 16,
                                            ),
                                            child: Text(
                                              "Baked salmon fish",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtSofiaProLight12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: getMargin(
                                        left: 7,
                                      ),
                                      decoration:
                                          AppDecoration.fillWhiteA700.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              158,
                                            ),
                                            width: getHorizontalSize(
                                              154,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      147,
                                                    ),
                                                    width: getHorizontalSize(
                                                      154,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgUxrhru8fphq,
                                                          height:
                                                              getVerticalSize(
                                                            147,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            154,
                                                          ),
                                                          radius: BorderRadius
                                                              .circular(
                                                            getHorizontalSize(
                                                              15,
                                                            ),
                                                          ),
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                              134,
                                                            ),
                                                            margin: getMargin(
                                                              left: 10,
                                                              top: 10,
                                                              right: 10,
                                                              bottom: 109,
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                    28,
                                                                  ),
                                                                  width:
                                                                      getHorizontalSize(
                                                                    58,
                                                                  ),
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    children: [
                                                                      CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgMenuWhiteA700,
                                                                        height:
                                                                            getVerticalSize(
                                                                          28,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          58,
                                                                        ),
                                                                        radius:
                                                                            BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                            14,
                                                                          ),
                                                                        ),
                                                                        alignment:
                                                                            Alignment.center,
                                                                      ),
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              getPadding(
                                                                            left:
                                                                                7,
                                                                          ),
                                                                          child:
                                                                              RichText(
                                                                            text:
                                                                                TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: "\$",
                                                                                  style: TextStyle(
                                                                                    color: ColorConstant.deepOrange400,
                                                                                    fontSize: getFontSize(
                                                                                      9.801861763000488,
                                                                                    ),
                                                                                    fontFamily: 'TT Commons',
                                                                                    fontWeight: FontWeight.w400,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: "8.25",
                                                                                  style: TextStyle(
                                                                                    color: ColorConstant.gray90001,
                                                                                    fontSize: getFontSize(
                                                                                      20.249998092651367,
                                                                                    ),
                                                                                    fontFamily: 'TT Commons',
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                CustomIconButton(
                                                                  height: 28,
                                                                  width: 28,
                                                                  variant:
                                                                      IconButtonVariant
                                                                          .OutlineDeeporange40066,
                                                                  padding:
                                                                      IconButtonPadding
                                                                          .PaddingAll6,
                                                                  child:
                                                                      CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgLightbulb,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                    margin: getMargin(
                                                      left: 10,
                                                      top: 134,
                                                      right: 84,
                                                    ),
                                                    padding: getPadding(
                                                      left: 6,
                                                      top: 7,
                                                      right: 6,
                                                      bottom: 7,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineDeeporange400331
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "4.5",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSofiaProSemiBold10,
                                                        ),
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar,
                                                          height: getSize(
                                                            8,
                                                          ),
                                                          width: getSize(
                                                            8,
                                                          ),
                                                          margin: getMargin(
                                                            left: 3,
                                                            top: 1,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 2,
                                                            top: 1,
                                                            bottom: 1,
                                                          ),
                                                          child: Text(
                                                            "(25+)",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtSofiaProRegular7,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 6,
                                            ),
                                            child: Text(
                                              "Salmon Salad",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSofiaProSemiBold14,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 11,
                                              top: 9,
                                              bottom: 16,
                                            ),
                                            child: Text(
                                              "Baked salmon fish",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtSofiaProLight12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   /* Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.maxFinite,
                        margin: getMargin(
                          top: 58,
                          bottom: 116,
                        ),
                        padding: getPadding(
                          left: 16,
                          top: 12,
                          right: 16,
                          bottom: 12,
                        ),
                        decoration: AppDecoration.outlineBluegray7001e,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                              height: getVerticalSize(
                                27,
                              ),
                              width: getHorizontalSize(
                                28,
                              ),
                              margin: getMargin(
                                left: 6,
                                top: 12,
                                bottom: 11,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgLocationBlueGray100,
                              height: getVerticalSize(
                                28,
                              ),
                              width: getHorizontalSize(
                                26,
                              ),
                              margin: getMargin(
                                top: 13,
                                bottom: 9,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                34,
                              ),
                              width: getHorizontalSize(
                                32,
                              ),
                              margin: getMargin(
                                top: 3,
                                bottom: 12,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgLock,
                                    height: getVerticalSize(
                                      24,
                                    ),
                                    width: getHorizontalSize(
                                      22,
                                    ),
                                    alignment: Alignment.bottomLeft,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: getSize(
                                        14,
                                      ),
                                      width: getSize(
                                        14,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgTrash,
                                            height: getSize(
                                              14,
                                            ),
                                            width: getSize(
                                              14,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Text(
                                                "4",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtSofiaProLight10,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgForward,
                              height: getSize(
                                26,
                              ),
                              width: getSize(
                                26,
                              ),
                              margin: getMargin(
                                top: 15,
                                bottom: 9,
                              ),
                            ),
                           /* Container(
                              height: getVerticalSize(
                                39,
                              ),
                              width: getHorizontalSize(
                                34,
                              ),
                              margin: getMargin(
                                bottom: 11,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgNotification,
                                    height: getSize(
                                      28,
                                    ),
                                    width: getSize(
                                      28,
                                    ),
                                    alignment: Alignment.bottomLeft,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: getSize(
                                        14,
                                      ),
                                      width: getSize(
                                        14,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgClose,
                                            height: getSize(
                                              14,
                                            ),
                                            width: getSize(
                                              14,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "6",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtSofiaProLight10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),*/
                          ],
                        ),
                      ),
                    ),*/
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
