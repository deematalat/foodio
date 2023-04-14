import 'widgets/gridone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_button.dart';
import 'package:foodio/widgets/custom_icon_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VefificationCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
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
                                                  ImageConstant.imgEllipse1261,
                                              height: getVerticalSize(75),
                                              width: getHorizontalSize(50),
                                              alignment: Alignment.centerLeft),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse1271,
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
                                    imagePath: ImageConstant.imgEllipse1281,
                                    height: getVerticalSize(72),
                                    width: getHorizontalSize(77),
                                    margin: getMargin(bottom: 3))
                              ])),
                      Padding(
                          padding: getPadding(left: 26, top: 104),
                          child: Text("Vefification Code",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProSemiBold3641)),
                      Container(
                          width: getHorizontalSize(254),
                          margin: getMargin(left: 26, top: 15),
                          child: Text(
                              "Please type the verification code sent to prelookstudio@gmail.com",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSofiaProRegular14)),
                      Padding(
                          padding: getPadding(left: 27, top: 30, right: 28),
                          child: PinCodeTextField(
                              appContext: context,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.deepOrange400,
                                  fontSize: getFontSize(27.200000762939453),
                                  fontFamily: 'Sofia Pro',
                                  fontWeight: FontWeight.w500),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(65),
                                  fieldWidth: getHorizontalSize(65),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10)),
                                  selectedFillColor: ColorConstant.whiteA700,
                                  activeFillColor: ColorConstant.whiteA700,
                                  inactiveFillColor: ColorConstant.whiteA700,
                                  inactiveColor: ColorConstant.gray200,
                                  selectedColor: ColorConstant.gray200,
                                  activeColor: ColorConstant.gray200))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 30),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "I don’t recevie a code! ",
                                        style: TextStyle(
                                            color: ColorConstant.gray700,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Sofia Pro',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "Please resend",
                                        style: TextStyle(
                                            color: ColorConstant.deepOrange400,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Sofia Pro',
                                            fontWeight: FontWeight.w500))
                                  ]),
                                  textAlign: TextAlign.left))),
                      Spacer(),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 5, top: 6, right: 5, bottom: 6),
                              decoration: AppDecoration.fillBluegray100e5,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: 9,
                                        itemBuilder: (context, index) {
                                          return GridoneItemWidget();
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
                                                  height: getVerticalSize(46),
                                                  width: getHorizontalSize(117),
                                                  text: "0",
                                                  shape: ButtonShape
                                                      .RoundedBorder5),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMail,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(
                                                      left: 55,
                                                      top: 13,
                                                      bottom: 15))
                                            ]))
                                  ])))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
