import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            gradient: LinearGradient(
              begin: Alignment(
                0.44,
                0,
              ),
              end: Alignment(
                0.3,
                0.9,
              ),
              colors: [
                ColorConstant.blueGray70000,
                ColorConstant.gray900,
                ColorConstant.black900,
              ],
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgWelcome,
              ),
              opacity:0.3,
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 27,
              top: 26,
              right: 27,
              bottom: 26,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  height: getVerticalSize(
                    32,
                  ),
                  width: getHorizontalSize(
                    55,
                  ),
                  text: "Skip",
                  onTap:(){
                    Navigator.pushNamed(context,AppRoutes.homeScreen);
                  },
                  variant: ButtonVariant.OutlineBluegray1003f,
                  shape: ButtonShape.CircleBorder16,
                  fontStyle: ButtonFontStyle.SofiaProRegular14,
                  alignment: Alignment.centerRight,
                ),
                Container(
                  width: getHorizontalSize(
                    281,
                  ),
                  margin: getMargin(
                    top: 99,
                    right: 38,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Welcome to\n",
                          style: TextStyle(
                            color: ColorConstant.gray90001,
                            fontSize: getFontSize(
                              53,
                            ),
                            fontFamily: 'Sofia Pro',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: "Food",
                          style: TextStyle(
                            color: ColorConstant.deepOrange400,
                            fontSize: getFontSize(
                              45,
                            ),
                            fontFamily: 'Sofia Pro',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    246,
                  ),
                  margin: getMargin(
                    left: 2,
                    top: 15,
                    right: 71,
                  ),
                  child: Text(
                    "Your favourite foods delivered fast at your door.",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSofiaProRegular18,
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getVerticalSize(
                      16,
                    ),
                    width: getHorizontalSize(
                      293,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            " sign in with",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSofiaProMedium16,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgGroup17868,
                          height: getVerticalSize(
                            1,
                          ),
                          width: getHorizontalSize(
                            293,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 17,
                    right: 3,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomButton(
                          height: getVerticalSize(
                            54,
                          ),
                          text: "FACEBOOK",
                          margin: getMargin(
                            right: 17,
                          ),
                          variant: ButtonVariant.OutlineBluegray1003f,
                          padding: ButtonPadding.PaddingT20,
                          fontStyle: ButtonFontStyle.SofiaProMedium13,
                          prefixWidget: Container(
                            margin: getMargin(
                              right: 8,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgFacebook,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: getMargin(
                            left: 17,
                          ),
                          padding: getPadding(
                            all: 12,
                          ),
                          decoration:
                              AppDecoration.outlineBluegray1003f.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder27,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgGoogle,
                                height: getSize(
                                  28,
                                ),
                                width: getSize(
                                  28,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 15,
                                  top: 8,
                                  bottom: 7,
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
                CustomButton(
                  height: getVerticalSize(
                    54,
                  ),
                  text: "Start with email or phone",
                  margin: getMargin(
                    left: 1,
                    top: 23,
                  ),
                  variant: ButtonVariant.OutlineWhiteA700,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.SofiaProMedium17,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 37,
                      top: 24,
                      right: 37,
                      bottom: 22,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSofiaProRegular16,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 5,
                          ),
                          child: Text(
                            "Sign In",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSofiaProMedium16.copyWith(
                              decoration: TextDecoration.underline,
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
      ),
    );
  }
}
