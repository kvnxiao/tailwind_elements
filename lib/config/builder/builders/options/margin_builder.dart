import 'package:tailwind_elements/config/builder/builders/generators.dart';
import 'package:tailwind_elements/config/options/spacing/margin.dart';

/// A [ConstantsGenerator] used to generate Tailwind 'm-*' margin constants
/// to the .g.dart part file.
class MarginBuilder extends ConstantsGenerator {
  const MarginBuilder(super.options, super.config);

  @override
  String get themeConfigKey => 'margin';

  @override
  Map<String, String> get variablePrefixToValueClassName {
    return {
      'm': (TwMarginAll).toString(),
      'mx': (TwMarginX).toString(),
      'my': (TwMarginY).toString(),
      'mt': (TwMarginTop).toString(),
      'mr': (TwMarginRight).toString(),
      'mb': (TwMarginBottom).toString(),
      'ml': (TwMarginLeft).toString(),
    };
  }
}
