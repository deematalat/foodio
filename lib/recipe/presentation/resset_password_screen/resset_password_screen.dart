import 'widgets/gridten_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_button.dart';
import 'package:foodio/widgets/custom_icon_button.dart';
import 'package:foodio/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RessetPasswordScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: double.maxFinite,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: getVerticalSize(75),
                                        width: getHorizontalSize(160),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse1262,
                                                  height: getVerticalSize(75),
                                                  width: getHorizontalSize(50),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse1272,
                                                  height: getVerticalSize(66),
                                                  width: getHorizontalSize(160),
                                                  alignment:
                                                      Alignment.topCenter),
                                              CustomIconButton(
                                                  height: 38,
                                                  width: 38,
                                                  margin: getMargin(left: 27),
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  onTap: () {
                                                    onTapBtnArrowleft(context);
                                                  },
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft))
                                            ])),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse1282,
                                        height: getVerticalSize(72),
                                        width: getHorizontalSize(77),
                                        margin: getMargin(bottom: 3))
                                  ])),
                          Spacer(),
                          Padding(
                              padding: getPadding(left: 26),
                              child: Text("Resset Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProSemiBold3641)),
                          Container(
                              width: getHorizontalSize(220),
                              margin: getMargin(left: 26, top: 17),
                              child: Text(
                                  "Please enter your email address to request a password reset",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProRegular14)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: emailController,
                              hintText: "prelookstudio@gmail.com",
                              margin: getMargin(left: 25, top: 28, right: 25),
                              variant:
                                  TextFormFieldVariant.OutlineDeeporange400,
                              fontStyle:
                                  TextFormFieldFontStyle.SofiaProRegular18,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  margin: getMargin(top: 51),
                                  decoration: AppDecoration.outlineIndigo30028
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder27),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: getPadding(
                                                left: 44,
                                                top: 20,
                                                right: 44,
                                                bottom: 20),
                                            decoration: AppDecoration
                                                .outlineIndigo300281
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder27),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 3),
                                                      child: Text(
                                                          "Send new password",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSofiaProSemiBold15
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          1.2))))
                                                ]))
                                      ]))),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 76, bottom: 1),
                                  padding: getPadding(
                                      left: 5, top: 6, right: 5, bottom: 6),
                                  decoration: AppDecoration.fillBluegray100e5,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GridView.builder(
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent:
                                                        getVerticalSize(47),
                                                    crossAxisCount: 3,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(6),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(6)),
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: 9,
                                            itemBuilder: (context, index) {
                                              return GridtenItemWidget();
                                            }),
                                        Padding(
                                            padding: getPadding(
                                                top: 7, right: 44, bottom: 39),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(46),
                                                      width: getHorizontalSize(
                                                          117),
                                                      text: "0",
                                                      shape: ButtonShape
                                                          .RoundedBorder5),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgMail,
                                                      height:
                                                          getVerticalSize(18),
                                                      width:
                                                          getHorizontalSize(22),
                                                      margin: getMargin(
                                                          left: 55,
                                                          top: 13,
                                                          bottom: 15))
                                                ]))
                                      ])))
                        ])))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
