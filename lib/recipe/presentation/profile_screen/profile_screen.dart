import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_icon_button.dart';
import 'package:foodio/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  TextEditingController groupFourteenController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController groupTwelveController = TextEditingController();

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
                              height: getVerticalSize(222),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            padding: getPadding(
                                                left: 26,
                                                top: 37,
                                                right: 26,
                                                bottom: 37),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImageConstant
                                                            .imgGroup15),
                                                    fit: BoxFit.cover)),
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
                                                      margin:
                                                          getMargin(bottom: 52),
                                                      onTap: () {
                                                        onTapBtnArrowleft(
                                                            context);
                                                      },
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleft))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.whiteA700,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(54))),
                                            child: Container(
                                                height: getSize(108),
                                                width: getSize(108),
                                                padding: getPadding(
                                                    left: 9,
                                                    top: 5,
                                                    right: 9,
                                                    bottom: 5),
                                                decoration: AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder54),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              height:
                                                                  getSize(90),
                                                              width:
                                                                  getSize(90),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgImage13,
                                                                        height: getSize(
                                                                            90),
                                                                        width: getSize(
                                                                            90),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            45)),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                        child: Container(
                                                                            margin: getMargin(right: 9),
                                                                            padding: getPadding(all: 3),
                                                                            decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              Container(height: getSize(11), width: getSize(11), decoration: BoxDecoration(color: ColorConstant.deepOrange400, borderRadius: BorderRadius.circular(getHorizontalSize(5))))
                                                                            ])))
                                                                  ]))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCameraWhiteA700,
                                                          height: getSize(27),
                                                          width: getSize(27),
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin: getMargin(
                                                              right: 5))
                                                    ]))))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Text("Eljad Eendaz",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProSemiBold20)),
                          Padding(
                              padding: getPadding(top: 8),
                              child: Text("Edit Profile",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaProRegular14Gray500)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 27, top: 48),
                                  child: Text("Full name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtSofiaProRegular16Gray500))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: groupFourteenController,
                              hintText: "Eljad Eendaz",
                              margin: getMargin(left: 18, top: 13, right: 18),
                              variant:
                                  TextFormFieldVariant.OutlineDeeporange400_1,
                              padding: TextFormFieldPadding.PaddingT22,
                              fontStyle:
                                  TextFormFieldFontStyle.SofiaProSemiBold20),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 28, top: 27),
                                  child: Text("E-mail",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtSofiaProRegular16Gray500))),
                          Container(
                              height: getVerticalSize(68),
                              width: getHorizontalSize(341),
                              margin: getMargin(top: 13),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            width: getHorizontalSize(84),
                                            margin: getMargin(left: 21),
                                            child: Text("\$ 1679.30",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSofiaProBold24))),
                                    CustomTextFormField(
                                        width: getHorizontalSize(341),
                                        focusNode: FocusNode(),
                                        controller: emailOneController,
                                        hintText: "prelookstudio@gmail.com",
                                        padding:
                                            TextFormFieldPadding.PaddingT22,
                                        fontStyle: TextFormFieldFontStyle
                                            .SofiaProMedium17Gray90001,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        alignment: Alignment.topCenter)
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 28, top: 24),
                                  child: Text("Phone Number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtSofiaProRegular16Gray500))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: groupTwelveController,
                              hintText: "+1 (783) 0986 8786",
                              margin: getMargin(
                                  left: 18, top: 13, right: 18, bottom: 5),
                              padding: TextFormFieldPadding.PaddingT22,
                              fontStyle: TextFormFieldFontStyle
                                  .SofiaProMedium17Gray90001,
                              textInputAction: TextInputAction.done)
                        ])))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
