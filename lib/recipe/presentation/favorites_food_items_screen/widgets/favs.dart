

import 'package:flutter/material.dart';

class Favorites extends InheritedWidget {
  final List<String> favorites;
  final Widget child;

  Favorites({required this.favorites, required this.child}) : super(child: child);

  static Favorites of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Favorites>()!;
  }

  @override
  bool updateShouldNotify(Favorites oldWidget) {
    return favorites != oldWidget.favorites;
  }
}
