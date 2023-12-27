import 'package:flutter/material.dart';
import 'package:tailwind_elements/widgets/style/style.dart';
import 'package:tailwind_elements/widgets/style/text_style.dart';

/// A [Text] widget wrapper with support for Tailwind styled properties.
@immutable
class TwText extends Text {
  /// Tailwind text style properties
  final TwTextStyle? _style;

  /// Takes in a Flutter [TextStyle] to merge and override the Tailwind styles
  final TextStyle? overrideStyle;

  const TwText(
    super.data, {
    final TwStyle? style,
    this.overrideStyle,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaler,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.key,
  })  : _style = style,
        super();

  const TwText.rich(
    super.textSpan, {
    final TwStyle? style,
    this.overrideStyle,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaler,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.key,
  })  : _style = style,
        super.rich();

  @override
  TextStyle? get style => _style?.toTextStyle().merge(overrideStyle);

  @override
  Color? get selectionColor => _style?.selectionColor?.color;
}
