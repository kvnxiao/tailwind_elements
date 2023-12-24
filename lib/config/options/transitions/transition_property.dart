import 'package:meta/meta.dart';

enum TransitionProperty {
  none,
  all,

  textColor,
  backgroundColor,
  borderColor,
  textDecorationColor,
  fill,
  stroke,
  opacity,
  boxShadow,
  transform,
  filter,
  backdropFilter,

  // other common CSS properties not set by Tailwind defaults
  width,
  height,
  borderRadius;

  static TransitionProperty fromCss(final String cssType) {
    return switch (cssType) {
      'all' => TransitionProperty.all,
      'color' => TransitionProperty.textColor,
      'background-color' => TransitionProperty.backgroundColor,
      'border-color' => TransitionProperty.borderColor,
      'text-decoration-color' => TransitionProperty.textDecorationColor,
      'fill' => TransitionProperty.fill,
      'stroke' => TransitionProperty.stroke,
      'opacity' => TransitionProperty.opacity,
      'box-shadow' => TransitionProperty.boxShadow,
      'transform' => TransitionProperty.transform,
      'filter' => TransitionProperty.filter,
      'backdrop-filter' => TransitionProperty.backdropFilter,
      'width' => TransitionProperty.width,
      'height' => TransitionProperty.height,
      'border-radius' => TransitionProperty.borderRadius,
      _ => TransitionProperty.none,
    };
  }
}

@immutable
class TwTransitionProperty {
  final Set<TransitionProperty> properties;

  const TwTransitionProperty(this.properties);

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwTransitionProperty &&
          runtimeType == other.runtimeType &&
          properties == other.properties;

  @override
  int get hashCode => properties.hashCode;

  bool get isNone => properties.contains(TransitionProperty.none);

  bool has(final TransitionProperty property) =>
      properties.contains(TransitionProperty.all) ||
      properties.contains(property);
}
