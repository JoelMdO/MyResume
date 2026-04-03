import 'package:flutter/material.dart';

// Safe-font helpers that always use bundled local font families.
// Make sure the TTF files are present in `assets/fonts/` and declared in pubspec.yaml.

TextStyle montserrat({
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  Color? color,
  double? height,
  TextDecoration? decoration,
}) {
  return TextStyle(
    fontFamily: 'Montserrat',
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    color: color,
    height: height,
    decoration: decoration,
  );
}

TextTheme montserratTextTheme([TextTheme? base]) {
  base = base ?? Typography.material2018().black;
  return base.copyWith(
    displayLarge: base.displayLarge?.copyWith(fontFamily: 'Montserrat'),
    displayMedium: base.displayMedium?.copyWith(fontFamily: 'Montserrat'),
    displaySmall: base.displaySmall?.copyWith(fontFamily: 'Montserrat'),
    headlineLarge: base.headlineLarge?.copyWith(fontFamily: 'Montserrat'),
    headlineMedium: base.headlineMedium?.copyWith(fontFamily: 'Montserrat'),
    headlineSmall: base.headlineSmall?.copyWith(fontFamily: 'Montserrat'),
    titleLarge: base.titleLarge?.copyWith(fontFamily: 'Montserrat'),
    titleMedium: base.titleMedium?.copyWith(fontFamily: 'Montserrat'),
    titleSmall: base.titleSmall?.copyWith(fontFamily: 'Montserrat'),
    bodyLarge: base.bodyLarge?.copyWith(fontFamily: 'Montserrat'),
    bodyMedium: base.bodyMedium?.copyWith(fontFamily: 'Montserrat'),
    bodySmall: base.bodySmall?.copyWith(fontFamily: 'Montserrat'),
    labelLarge: base.labelLarge?.copyWith(fontFamily: 'Montserrat'),
    labelSmall: base.labelSmall?.copyWith(fontFamily: 'Montserrat'),
  );
}

TextStyle inter({
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  Color? color,
  double? height,
  TextDecoration? decoration,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: 'Inter',
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    color: color,
    height: height,
    decoration: decoration,
  );
}

TextStyle mcLaren({
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  Color? color,
  double? height,
  TextDecoration? decoration,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: 'McLaren',
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    color: color,
    height: height,
    decoration: decoration,
  );
}

TextStyle notoSansKhojki({
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  Color? color,
  double? height,
  TextDecoration? decoration,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: 'NotoSansKhojki',
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    color: color,
    height: height,
    decoration: decoration,
  );
}
