enum Category {
  theme,
  aria,
  backgrounds,
  borders,
  effects,
  filters,
  flexboxAndGrid,
  interactivity,
  layout,
  sizing,
  spacing,
  svg,
  tables,
  transforms,
  transitionsAndAnimations,
  typography,
}

const Map<Category, Set<String>> themeKeysByCategory = {
  Category.theme: {
    'colors',
    'screens',
    'spacing',
  },
  Category.aria: {
    'aria',
    'supports',
    'data',
  },
  Category.backgrounds: {
    'backgroundColor',
    'backgroundImage',
    'backgroundOpacity',
    'backgroundPosition',
    'backgroundSize',
    'gradientColorStops',
    'gradientColorStopPositions',
  },
  Category.borders: {
    'borderColor',
    'borderOpacity',
    'borderRadius',
    'borderSpacing',
    'borderWidth',
    'divideColor',
    'divideOpacity',
    'divideWidth',
    'outlineColor',
    'outlineOffset',
    'outlineWidth',
    'ringColor',
    'ringOffsetColor',
    'ringOffsetWidth',
    'ringOpacity',
    'ringWidth',
  },
  Category.effects: {
    'boxShadow',
    'boxShadowColor',
    'opacity',
  },
  Category.filters: {
    'backdropBlur',
    'backdropBrightness',
    'backdropContrast',
    'backdropGrayscale',
    'backdropHueRotate',
    'backdropInvert',
    'backdropOpacity',
    'backdropSaturate',
    'backdropSepia',
    'blur',
    'brightness',
    'contrast',
    'dropShadow',
    'grayscale',
    'hueRotate',
    'invert',
    'saturate',
    'sepia',
  },
  Category.flexboxAndGrid: {
    'flex',
    'flexBasis',
    'flexGrow',
    'flexShrink',
    'gap',
    'gridAutoColumns',
    'gridAutoRows',
    'gridColumn',
    'gridColumnEnd',
    'gridColumnStart',
    'gridRow',
    'gridRowEnd',
    'gridRowStart',
    'gridTemplateColumns',
    'gridTemplateRows',
    'order',
  },
  Category.interactivity: {
    'accentColor',
    'caretColor',
    'cursor',
    'scrollMargin',
    'scrollPadding',
    'willChange',
  },
  Category.layout: {
    'aspectRatio',
    'columns',
    'container',
    'inset',
    'objectPosition',
    'zIndex',
  },
  Category.sizing: {
    'height',
    'maxHeight',
    'maxWidth',
    'minHeight',
    'minWidth',
    'width',
    'size',
  },
  Category.spacing: {
    'margin',
    'padding',
    'space',
  },
  Category.svg: {
    'fill',
    'stroke',
    'strokeWidth',
  },
  Category.tables: {},
  Category.transforms: {
    'rotate',
    'scale',
    'skew',
    'transformOrigin',
    'translate',
  },
  Category.transitionsAndAnimations: {
    'animation',
    'keyframes',
    'transitionDelay',
    'transitionDuration',
    'transitionProperty',
    'transitionTimingFunction',
  },
  Category.typography: {
    'content',
    'fontFamily',
    'fontSize',
    'fontWeight',
    'letterSpacing',
    'lineHeight',
    'listStyleType',
    'listStyleImage',
    'lineClamp',
    'placeholderColor',
    'placeholderOpacity',
    'textColor',
    'textDecorationColor',
    'textDecorationThickness',
    'textIndent',
    'textOpacity',
    'textUnderlineOffset',
  },
};

final Map<String, Category> themeKeysToCategory = Map.unmodifiable(
  themeKeysByCategory.entries.fold({}, (
    final previousValue,
    final element,
  ) {
    previousValue.addEntries(
      element.value.map((final String key) => MapEntry(key, element.key)),
    );
    return previousValue;
  }),
);
