import 'widgets/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_icon_button.dart';

class CategoryScreen extends StatelessWidget {
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
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(248),
                              width: getHorizontalSize(349),
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text("80 type of pizza",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtSofiaProRegular19)),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomIconButton(
                                                  height: 38,
                                                  width: 38,
                                                  margin: getMargin(left: 1),
                                                  onTap: () {
                                                    onTapBtnArrowleft(context);
                                                  },
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft)),
                                              Container(
                                                  width: getHorizontalSize(124),
                                                  margin: getMargin(top: 30),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "Fast\n",
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .blueGray90002,
                                                                fontSize:
                                                                    getFontSize(
                                                                        45),
                                                                fontFamily:
                                                                    'Sofia Pro',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700)),
                                                        TextSpan(
                                                            text: "Food",
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .deepOrange400,
                                                                fontSize:
                                                                    getFontSize(
                                                                        55.91788101196289),
                                                                fontFamily:
                                                                    'Sofia Pro',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700))
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            height: getVerticalSize(244),
                                            width: getHorizontalSize(221),
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMaskgroup229x221,
                                                      height:
                                                          getVerticalSize(229),
                                                      width: getHorizontalSize(
                                                          221),
                                                      alignment:
                                                          Alignment.topCenter),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMaskgroup138x108,
                                                      height:
                                                          getVerticalSize(138),
                                                      width: getHorizontalSize(
                                                          108),
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      margin:
                                                          getMargin(left: 32))
                                                ])))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 27, top: 57, right: 42),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 1),
                                    child: Text("Short by:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSofiaProRegular14Gray90001)),
                                Padding(
                                    padding: getPadding(left: 11, top: 3),
                                    child: Text("Popular",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSofiaProMedium14Deeporange400)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector11,
                                    height: getVerticalSize(2),
                                    width: getHorizontalSize(4),
                                    margin:
                                        getMargin(left: 5, top: 9, bottom: 7)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgSettingsDeepOrange40018x18,
                                    height: getSize(18),
                                    width: getSize(18))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 26, top: 24, right: 26),
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(20));
                                  },
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return CategoryItemWidget();
                                  })))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
