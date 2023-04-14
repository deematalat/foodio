import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_icon_button.dart';
import 'package:foodio/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController groupOneController = TextEditingController();

  TextEditingController groupTwoController = TextEditingController();

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
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                                      .imgEllipse12675x50,
                                                  height: getVerticalSize(75),
                                                  width: getHorizontalSize(50),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse12766x160,
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
                                        imagePath:
                                            ImageConstant.imgEllipse12872x77,
                                        height: getVerticalSize(72),
                                        width: getHorizontalSize(77),
                                        margin: getMargin(bottom: 3))
                                  ])),
                          Spacer(),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 26),
                                  child: Text("Login",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtSofiaProSemiBold3641))),
                          Container(
                              height: getVerticalSize(97),
                              width: getHorizontalSize(324),
                              margin: getMargin(top: 28),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            width: getHorizontalSize(84),
                                            margin: getMargin(left: 13),
                                            child: Text("\$ 1679.30",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSofiaProBold24))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 2),
                                                  child: Text("E-mail",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSofiaProRegular16Gray500)),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      groupOneController,
                                                  hintText:
                                                      "Your email or phone",
                                                  margin: getMargin(top: 13),
                                                  textInputType: TextInputType
                                                      .emailAddress)
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 29, top: 24),
                                  child: Text("Password",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtSofiaProRegular16Gray500))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: groupTwoController,
                              hintText: "Password",
                              margin: getMargin(left: 26, top: 13, right: 24),
                              padding: TextFormFieldPadding.PaddingT24_1,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 25, right: 22, bottom: 27),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgEye)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(65)),
                              isObscureText: true),
                          Padding(
                              padding: getPadding(top: 32),
                              child: Text("Forgot password?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtSofiaProMedium14Deeporange400)),
                          Container(
                              margin: getMargin(left: 65, top: 27, right: 62),
                              decoration: AppDecoration.outlineIndigo30028
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder27),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            padding: getPadding(
                                                left: 98,
                                                top: 21,
                                                right: 98,
                                                bottom: 21),
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
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "Login".toUpperCase(),
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
                                                ])))
                                  ])),
                          Padding(
                              padding: getPadding(top: 32),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Don’t have an account? ",
                                        style: TextStyle(
                                            color: ColorConstant.gray700,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Sofia Pro',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "Sign Up",
                                        style: TextStyle(
                                            color: ColorConstant.deepOrange400,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Sofia Pro',
                                            fontWeight: FontWeight.w400))
                                  ]),
                                  textAlign: TextAlign.left)),
                          Container(
                              height: getVerticalSize(14),
                              width: getHorizontalSize(324),
                              margin: getMargin(top: 52, bottom: 14),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Text("Sign in with",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSofiaProMedium14Gray700)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgGroup17868Gray400,
                                        height: getVerticalSize(1),
                                        width: getHorizontalSize(324),
                                        alignment: Alignment.topCenter,
                                        margin: getMargin(top: 4))
                                  ]))
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 25, right: 25, bottom: 28),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: Container(
                          margin: getMargin(right: 15),
                          padding: getPadding(
                              left: 11, top: 6, right: 11, bottom: 6),
                          decoration: AppDecoration.outlineBluegray1003f1
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgFacebook,
                                    height: getVerticalSize(39),
                                    width: getHorizontalSize(38),
                                    margin: getMargin(top: 4)),
                                Padding(
                                    padding: getPadding(
                                        left: 9, top: 16, bottom: 14),
                                    child: Text("FACEBOOK",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSofiaProMedium13
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.65))))
                              ]))),
                  Expanded(
                      child: Container(
                          margin: getMargin(left: 15),
                          padding: getPadding(
                              left: 13, top: 12, right: 13, bottom: 12),
                          decoration: AppDecoration.outlineBluegray1003f1
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder27),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGoogle,
                                height: getSize(30),
                                width: getSize(30),
                                margin: getMargin(top: 1)),
                            Padding(
                                padding:
                                    getPadding(left: 14, top: 10, bottom: 8),
                                child: Text("GOOGLE",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSofiaProMedium13
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.65))))
                          ])))
                ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
