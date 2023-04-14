import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT20:
        return getPadding(
          top: 20,
          right: 17,
          bottom: 20,
        );
      case ButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case ButtonPadding.PaddingAll22:
        return getPadding(
          all: 22,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray1003f:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineWhiteA700:
        return ColorConstant.whiteA70035;
      case ButtonVariant.OutlineBluegray10040:
        return ColorConstant.deepOrange400;
      case ButtonVariant.OutlineDeeporange40040:
        return ColorConstant.deepOrange400;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray1003f:
        return ColorConstant.blueGray1003f;
      case ButtonVariant.OutlineBluegray10040:
        return ColorConstant.blueGray10040;
      case ButtonVariant.OutlineDeeporange40040:
        return ColorConstant.deepOrange40040;
      case ButtonVariant.OutlineWhiteA700:
        return null;
      default:
        return ColorConstant.blueGray400;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case ButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.RoundedBorder23:
        return BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.SofiaProRegular14:
        return TextStyle(
          color: ColorConstant.deepOrange400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.00,
          ),
        );
      case ButtonFontStyle.SofiaProMedium13:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.00,
          ),
        );
      case ButtonFontStyle.SofiaProMedium17:
        return TextStyle(
          color: ColorConstant.whiteA70001,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.00,
          ),
        );
      case ButtonFontStyle.SofiaProMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.00,
          ),
        );
      case ButtonFontStyle.SofiaProSemiBold15:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.00,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            25,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.20,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder5,
  CircleBorder16,
  CircleBorder27,
  RoundedBorder23,
}

enum ButtonPadding {
  PaddingAll8,
  PaddingT20,
  PaddingAll18,
  PaddingAll22,
}

enum ButtonVariant {
  OutlineBluegray400,
  OutlineBluegray1003f,
  OutlineWhiteA700,
  OutlineBluegray10040,
  OutlineDeeporange40040,
}

enum ButtonFontStyle {
  SFProDisplayRegular25,
  SofiaProRegular14,
  SofiaProMedium13,
  SofiaProMedium17,
  SofiaProMedium14,
  SofiaProSemiBold15,
}
