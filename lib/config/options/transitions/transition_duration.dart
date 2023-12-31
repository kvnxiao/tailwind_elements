import 'package:meta/meta.dart';
import 'package:tailwind_elements/config/options/units.dart';

@immutable
class TwTransitionDuration {
  final CssTimeUnit duration;

  const TwTransitionDuration(this.duration);

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is TwTransitionDuration &&
          runtimeType == other.runtimeType &&
          duration == other.duration;

  @override
  int get hashCode => duration.hashCode;

  @override
  String toString() {
    return 'TwTransitionDuration{duration: $duration}';
  }
}
