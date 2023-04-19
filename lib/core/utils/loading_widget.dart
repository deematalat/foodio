import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'color_constant.dart';


class LoadingWidget extends StatelessWidget {
  final double? size;
  const LoadingWidget({ this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitCircle(
        color: ColorConstant.deepOrange400,
        size: size ?? 100,
      ),
    );
  }
}
