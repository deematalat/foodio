import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.SofiaProMedium17:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.00,
          ),
        );
      case TextFormFieldFontStyle.SofiaProRegular18:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.00,
          ),
        );
      case TextFormFieldFontStyle.SofiaProSemiBold20:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.00,
          ),
        );
      case TextFormFieldFontStyle.SofiaProMedium17Gray90001:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.00,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.00,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeporange400:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.deepOrange400,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineDeeporange400_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.deepOrange400,
            width: 1,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray200,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeporange400:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineDeeporange400_1:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeporange400:
        return true;
      case TextFormFieldVariant.OutlineDeeporange400_1:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT24_1:
        return getPadding(
          left: 20,
          top: 24,
          bottom: 24,
        );
      case TextFormFieldPadding.PaddingT22:
        return getPadding(
          left: 16,
          top: 22,
          right: 16,
          bottom: 22,
        );
      default:
        return getPadding(
          left: 20,
          top: 24,
          right: 20,
          bottom: 24,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder10,
}

enum TextFormFieldPadding {
  PaddingT24,
  PaddingT24_1,
  PaddingT22,
}

enum TextFormFieldVariant {
  None,
  OutlineGray200,
  OutlineDeeporange400,
  OutlineDeeporange400_1,
}

enum TextFormFieldFontStyle {
  SofiaProRegular17,
  SofiaProMedium17,
  SofiaProRegular18,
  SofiaProSemiBold20,
  SofiaProMedium17Gray90001,
}
