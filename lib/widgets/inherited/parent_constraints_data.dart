import 'package:flutter/material.dart';

@immutable
class ParentConstraintsData extends InheritedWidget {
  final BoxConstraints constraints;

  const ParentConstraintsData({
    required this.constraints,
    required super.child,
    super.key,
  });

  const ParentConstraintsData.unbounded({required super.child, super.key})
      : constraints = const BoxConstraints();

  static ParentConstraintsData? of(final BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ParentConstraintsData>();
  }

  @override
  bool updateShouldNotify(final ParentConstraintsData oldWidget) {
    return constraints != oldWidget.constraints;
  }
}