import 'package:meta/meta.dart';
import 'package:tailwind_elements/config/options/units.dart';

@immutable
class TwTransitionDelay {
  final CssTimeUnit delay;

  const TwTransitionDelay(this.delay);

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwTransitionDelay &&
          runtimeType == other.runtimeType &&
          delay == other.delay;

  @override
  int get hashCode => delay.hashCode;

  @override
  String toString() {
    return 'TwTransitionDelay{delay: $delay}';
  }
}
