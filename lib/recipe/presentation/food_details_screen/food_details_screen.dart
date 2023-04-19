import 'package:carousel_slider/carousel_slider.dart';
import 'package:foodio/recipe/domain/entities/recipe.dart';
import 'package:foodio/recipe/presentation/food_details_screen/widgets/slider.dart';
import '../favorites_food_items_screen/widgets/nav_bar_button.dart';
import 'widgets/food_details_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:foodio/core/app_export.dart';
import 'package:foodio/widgets/custom_icon_button.dart';

class FoodDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final  index = arguments['index'] as int;
    final recipes=arguments['recipes'] as List<Recipe>;
    List<dynamic> items = [
      {
        'type': 'image',
        'url': recipes[index].thumbnail_url ,
      },
      {
        'type': 'video',
        'url':recipes[index].renditions[0].url??"",
        'poster':recipes[index].renditions[0].poster_url??"",
      },

    ];
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body:SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 17, top: 27, right: 17, bottom: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(25)
                              ),
                                height: getVerticalSize(206),
                                width: getHorizontalSize(323),
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Center(
                                        child: CarouselSlider(
                                          options: CarouselOptions(
                                            height: getVerticalSize(206),
                                            autoPlay: false,
                                            enlargeCenterPage: true,
                                          ),
                                          items: items.map((item) =>SliderItem(item)).toList(),
                                        ),
                                      ),

                                    ]
                                ))),
                        Padding(
                            padding: getPadding(left: 5, top: 21),
                            child: Text(recipes[index].name,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSofiaProSemiBold28)),
                        Padding(
                            padding: getPadding(left: 5, top: 16),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgStarAmber400,
                                  height: getSize(17),
                                  width: getSize(17)),
                              Padding(
                                  padding: getPadding(left: 8, bottom: 2),
                                  child: Text(recipes[index].user_ratings.count_positive.toString(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtSofiaProSemiBold14Gray90001)),
                              Padding(
                                  padding: getPadding(left: 5, top: 1, bottom: 1),
                                  child: Text("(30+)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtSofiaProRegular14Gray500)),
                              Padding(
                                  padding: getPadding(left: 9, bottom: 3),
                                  child: Text("See Review",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtSofiaProRegular13Deeporange400
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline)))
                            ])),
                        Padding(
                            padding: getPadding(left: 5, top: 10, right: 6),
                            child: Row(children: [
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "\$",
                                        style: TextStyle(
                                            color: ColorConstant.deepOrange400,
                                            fontSize:
                                                getFontSize(17.010637283325195),
                                            fontFamily: 'Sofia Pro',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "9.50",
                                        style: TextStyle(
                                            color: ColorConstant.deepOrange400,
                                            fontSize: getFontSize(31),
                                            fontFamily: 'Sofia Pro',
                                            fontWeight: FontWeight.w600))
                                  ]),
                                  textAlign: TextAlign.left),
                              Spacer(),
                            ])),
                        Container(
                            width: getHorizontalSize(317),
                            margin: getMargin(left: 5, top: 19, right: 18),
                            child: Text(
                                recipes[index].description,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtHelveticaNeue15)),
                        Padding(
                            padding: getPadding(left: 3, top: 20),
                            child: Text("Nutrition",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSofiaProSemiBold18)),
                        Padding(
                            padding: getPadding(top: 11, right: 6),
                            child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, ind) {
                                  return SizedBox(height: getVerticalSize(9));
                                },
                                itemCount: 3,
                                itemBuilder: (context, ind) {
                                  return FoodDetailsItemWidget(recipes,index,ind);
                                }))
                      ])),
            ),
            bottomNavigationBar:Container(
              margin:EdgeInsets.only(
                bottom:getVerticalSize(10),
                left: getHorizontalSize(100),
                right:getHorizontalSize(100)
              ),
               width:30,
                child: SlideButton(),
            )
        ),
    );
  }
}
