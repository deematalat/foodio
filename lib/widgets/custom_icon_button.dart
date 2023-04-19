import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case IconButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      default:
        return getPadding(
          all: 14,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineBluegray507f:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineDeeporange40066:
        return ColorConstant.deepOrange400;
      case IconButtonVariant.FillWhiteA70033:
        return ColorConstant.whiteA70033;
      case IconButtonVariant.OutlineDeeporange40040:
        return ColorConstant.deepOrange400;
      case IconButtonVariant.OutlineDeeporange400:
        return null;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineDeeporange400:
        return Border.all(
          color: ColorConstant.deepOrange400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineBluegray1004c:
      case IconButtonVariant.OutlineBluegray507f:
      case IconButtonVariant.OutlineDeeporange40066:
      case IconButtonVariant.FillWhiteA70033:
      case IconButtonVariant.OutlineDeeporange40040:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBluegray507f:
        return [
          BoxShadow(
            color: ColorConstant.blueGray507f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              15,
            ),
          )
        ];
      case IconButtonVariant.OutlineDeeporange40066:
        return [
          BoxShadow(
            color: ColorConstant.deepOrange40066,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              7,
            ),
          )
        ];
      case IconButtonVariant.OutlineDeeporange400:
        return [
          BoxShadow(
            color: ColorConstant.blueGray50,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              20,
            ),
          )
        ];
      case IconButtonVariant.OutlineDeeporange40040:
        return [
          BoxShadow(
            color: ColorConstant.deepOrange40040,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              8,
            ),
          )
        ];
      case IconButtonVariant.FillWhiteA70033:
        return null;
      default:
        return [
          BoxShadow(
            color: ColorConstant.blueGray1004c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              5,
              10,
            ),
          )
        ];
    }
  }
}

enum IconButtonShape {
  RoundedBorder12,
  CircleBorder15,
}

enum IconButtonPadding {
  PaddingAll14,
  PaddingAll6,
  PaddingAll9,
}

enum IconButtonVariant {
  OutlineBluegray1004c,
  OutlineBluegray507f,
  OutlineDeeporange40066,
  FillWhiteA70033,
  OutlineDeeporange400,
  OutlineDeeporange40040,
}
