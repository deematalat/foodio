import 'widgets/reviews_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/app_bar/appbar_iconbutton.dart';
import 'package:foodio/widgets/app_bar/appbar_title.dart';
import 'package:foodio/widgets/app_bar/custom_app_bar.dart';

class ReviewsScreen extends StatelessWidget {
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
                    onTap: () => onTapArrowleft2(context)),
                centerTitle: true,
                title: AppbarTitle(text: "Reviews")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 25, right: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(top: 20),
                          padding: getPadding(
                              left: 13, top: 10, right: 13, bottom: 10),
                          decoration: AppDecoration.outlineGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage1330x30,
                                    height: getSize(30),
                                    width: getSize(30),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(15)),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 9, bottom: 7),
                                    child: Text("Write your review...",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSofiaProRegular14Gray90001))
                              ])),
                      Padding(
                          padding: getPadding(top: 35),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(24));
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return ReviewsItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
