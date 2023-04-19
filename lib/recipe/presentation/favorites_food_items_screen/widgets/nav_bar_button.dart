

 

import 'package:flutter/material.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';

import '../../../../core/utils/color_constant.dart';

 class SlideButton extends StatelessWidget {
   const SlideButton({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return  GradientSlideToAct(
       width: 60,
       dragableIconBackgroundColor: ColorConstant.blueGray40002,
       textStyle: TextStyle(color: Colors.white,fontSize: 15),
       text:"Slide to Fav",
       backgroundColor:ColorConstant.deepOrange400,
       onSubmit: (){},
       gradient:  const LinearGradient(
           begin: Alignment.topLeft,
           end: Alignment.bottomRight,
           colors: [
             Color(0Xff11998E ),
             Color(0Xff38EF7D),
           ]
       ),
     );
   }
 }
 
