import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController groupTwentyFourController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController groupTwentyFiveController = TextEditingController();

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getVerticalSize(
                          75,
                        ),
                        width: getHorizontalSize(
                          160,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse126,
                              height: getVerticalSize(
                                75,
                              ),
                              width: getHorizontalSize(
                                50,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse127,
                              height: getVerticalSize(
                                66,
                              ),
                              width: getHorizontalSize(
                                160,
                              ),
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse128,
                        height: getVerticalSize(
                          72,
                        ),
                        width: getHorizontalSize(
                          77,
                        ),
                        margin: getMargin(
                          bottom: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 26,
                      top: 26,
                    ),
                    child: Text(
                      "Sign Up",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSofiaProSemiBold3641,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 28,
                      top: 30,
                    ),
                    child: Text(
                      "Full name",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSofiaProRegular16Gray500,
                    ),
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: groupTwentyFourController,
                  hintText: "Arlene Mccoy",
                  margin: getMargin(
                    left: 26,
                    top: 13,
                    right: 24,
                  ),
                  variant: TextFormFieldVariant.OutlineDeeporange400,
                  fontStyle: TextFormFieldFontStyle.SofiaProMedium17,
                ),
                Container(
                  height: getVerticalSize(
                    97,
                  ),
                  width: getHorizontalSize(
                    324,
                  ),
                  margin: getMargin(
                    top: 27,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: getHorizontalSize(
                            84,
                          ),
                          margin: getMargin(
                            left: 13,
                          ),
                          child: Text(
                            "\$ 1679.30",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSofiaProBold24,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 2,
                              ),
                              child: Text(
                                "E-mail",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSofiaProRegular16Gray500,
                              ),
                            ),
                            CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: emailOneController,
                              hintText: "prelookstudio@gmail.com",
                              margin: getMargin(
                                top: 13,
                              ),
                              fontStyle:
                                  TextFormFieldFontStyle.SofiaProRegular18,
                              textInputType: TextInputType.emailAddress,
                              isObscureText: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 29,
                      top: 24,
                    ),
                    child: Text(
                      "Password",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSofiaProRegular16Gray500,
                    ),
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: groupTwentyFiveController,
                  margin: getMargin(
                    left: 26,
                    top: 13,
                    right: 24,
                  ),
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                    margin: getMargin(
                      left: 30,
                      top: 25,
                      right: 22,
                      bottom: 27,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgEye,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      65,
                    ),
                  ),
                  isObscureText: true,
                ),
                Container(
                  margin: getMargin(
                    left: 65,
                    top: 33,
                    right: 62,
                  ),
                  decoration: AppDecoration.outlineIndigo30028.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder27,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          padding: getPadding(
                            left: 90,
                            top: 21,
                            right: 90,
                            bottom: 21,
                          ),
                          decoration:
                              AppDecoration.outlineIndigo300281.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder27,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: Text(
                                  "SIGN UP",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtSofiaProSemiBold15.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      1.2,
                                    ),
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
                Padding(
                  padding: getPadding(
                    top: 33,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            color: ColorConstant.gray700,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Sofia Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "Login",
                          style: TextStyle(
                            color: ColorConstant.deepOrange400,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Sofia Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    14,
                  ),
                  width: getHorizontalSize(
                    324,
                  ),
                  margin: getMargin(
                    top: 50,
                    bottom: 5,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Sign up with",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSofiaProMedium14Gray700,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgGroup17868Gray400,
                        height: getVerticalSize(
                          1,
                        ),
                        width: getHorizontalSize(
                          324,
                        ),
                        alignment: Alignment.topCenter,
                        margin: getMargin(
                          top: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 25,
            right: 25,
            bottom: 28,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: getMargin(
                    right: 15,
                  ),
                  padding: getPadding(
                    left: 11,
                    top: 6,
                    right: 11,
                    bottom: 6,
                  ),
                  decoration: AppDecoration.outlineBluegray1003f1.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder27,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgFacebook,
                        height: getVerticalSize(
                          39,
                        ),
                        width: getHorizontalSize(
                          38,
                        ),
                        margin: getMargin(
                          top: 4,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 9,
                          top: 16,
                          bottom: 14,
                        ),
                        child: Text(
                          "FACEBOOK",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSofiaProMedium13.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.65,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: getMargin(
                    left: 15,
                  ),
                  padding: getPadding(
                    left: 13,
                    top: 12,
                    right: 13,
                    bottom: 12,
                  ),
                  decoration: AppDecoration.outlineBluegray1003f1.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder27,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgGoogle,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                        margin: getMargin(
                          top: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 14,
                          top: 10,
                          bottom: 8,
                        ),
                        child: Text(
                          "GOOGLE",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSofiaProMedium13.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.65,
                            ),
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
      ),
    );
  }
}
