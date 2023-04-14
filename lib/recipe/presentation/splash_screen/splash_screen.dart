import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:5),(){
      Navigator.pushNamed(context,AppRoutes.welcomeScreen);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.deepOrange400,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: ColorConstant.whiteA700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      24,
                    ),
                  ),
                ),
                child: Container(
                  height: getSize(
                    93,
                  ),
                  width: getSize(
                    93,
                  ),
                  padding: getPadding(
                    left: 18,
                    top: 17,
                    right: 18,
                    bottom: 17,
                  ),
                  decoration: AppDecoration.outlineDeeporange8007f.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgTicket,
                        height: getVerticalSize(
                          57,
                        ),
                        width: getHorizontalSize(
                          55,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                  bottom: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "FOOD",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPhosphateInline40,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 7,
                      ),
                      child: Text(
                        "IO",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPhosphateInline40WhiteA70090,
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
