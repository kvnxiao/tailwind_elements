import 'package:meta/meta.dart';
import 'package:tailwind_elements/config/options/box_types.dart';
import 'package:tailwind_elements/config/options/units.dart';

@immutable
class TwPaddingTop {
  final TwUnit value;

  const TwPaddingTop(this.value);

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwPaddingTop &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

@immutable
class TwPaddingRight {
  final TwUnit value;

  const TwPaddingRight(this.value);

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwPaddingRight &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

@immutable
class TwPaddingBottom {
  final TwUnit value;

  const TwPaddingBottom(this.value);

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwPaddingBottom &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

@immutable
class TwPaddingLeft {
  final TwUnit value;

  const TwPaddingLeft(this.value);

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwPaddingLeft &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

@immutable
class TwPaddingAll {
  final TwUnit value;

  const TwPaddingAll(this.value);

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwPaddingAll &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

@immutable
class TwPaddingX {
  final TwUnit value;

  const TwPaddingX(this.value);

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwPaddingX &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

@immutable
class TwPaddingY {
  final TwUnit value;

  const TwPaddingY(this.value);

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwPaddingY &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

@immutable
class TwPadding {
  final TwPaddingTop top;
  final TwPaddingRight right;
  final TwPaddingBottom bottom;
  final TwPaddingLeft left;
  final TwPaddingAll all;
  final TwPaddingX x;
  final TwPaddingY y;
  final BoxSideType type;

  const TwPadding.all(final TwPaddingAll padding)
      : top = const TwPaddingTop(PxUnit(0)),
        right = const TwPaddingRight(PxUnit(0)),
        bottom = const TwPaddingBottom(PxUnit(0)),
        left = const TwPaddingLeft(PxUnit(0)),
        x = const TwPaddingX(PxUnit(0)),
        y = const TwPaddingY(PxUnit(0)),
        all = padding,
        type = BoxSideType.all;

  const TwPadding.x(final TwPaddingX padding)
      : top = const TwPaddingTop(PxUnit(0)),
        right = const TwPaddingRight(PxUnit(0)),
        bottom = const TwPaddingBottom(PxUnit(0)),
        left = const TwPaddingLeft(PxUnit(0)),
        x = padding,
        y = const TwPaddingY(PxUnit(0)),
        all = const TwPaddingAll(PxUnit(0)),
        type = BoxSideType.x;

  const TwPadding.y(final TwPaddingY padding)
      : top = const TwPaddingTop(PxUnit(0)),
        right = const TwPaddingRight(PxUnit(0)),
        bottom = const TwPaddingBottom(PxUnit(0)),
        left = const TwPaddingLeft(PxUnit(0)),
        x = const TwPaddingX(PxUnit(0)),
        y = padding,
        all = const TwPaddingAll(PxUnit(0)),
        type = BoxSideType.y;

  const TwPadding.xy(this.x, this.y)
      : top = const TwPaddingTop(PxUnit(0)),
        right = const TwPaddingRight(PxUnit(0)),
        bottom = const TwPaddingBottom(PxUnit(0)),
        left = const TwPaddingLeft(PxUnit(0)),
        all = const TwPaddingAll(PxUnit(0)),
        type = BoxSideType.xy;

  const TwPadding({
    this.top = const TwPaddingTop(PxUnit(0)),
    this.right = const TwPaddingRight(PxUnit(0)),
    this.bottom = const TwPaddingBottom(PxUnit(0)),
    this.left = const TwPaddingLeft(PxUnit(0)),
  })  : x = const TwPaddingX(PxUnit(0)),
        y = const TwPaddingY(PxUnit(0)),
        all = const TwPaddingAll(PxUnit(0)),
        type = BoxSideType.trbl;

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwPadding &&
          runtimeType == other.runtimeType &&
          top == other.top &&
          right == other.right &&
          bottom == other.bottom &&
          left == other.left &&
          all == other.all &&
          x == other.x &&
          y == other.y &&
          type == other.type;

  @override
  int get hashCode =>
      top.hashCode ^
      right.hashCode ^
      bottom.hashCode ^
      left.hashCode ^
      all.hashCode ^
      x.hashCode ^
      y.hashCode ^
      type.hashCode;
}
