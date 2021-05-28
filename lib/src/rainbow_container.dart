import 'package:flutter/widgets.dart';
import 'package:random_color/random_color.dart';

final _randomColorGenerator = RandomColor();
Color get _randomColor => _randomColorGenerator.randomColor();

class RainbowContainer extends Container {
  /// A [Container] which will change colors randomly each time
  /// the `build` method is called.
  ///
  /// ```dart
  /// RainbowContainer(
  ///   child: Text('Hello world'),
  /// );
  /// ```
  RainbowContainer({
    Key? key,
    Widget? child,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Clip clipBehavior = Clip.none,
  }) : super(
          key: key,
          child: child,
          color: decoration is BoxDecoration ? null : _randomColor,
          alignment: alignment,
          padding: padding,
          decoration: decoration is BoxDecoration
              ? decoration.copyWith(color: _randomColor)
              : decoration,
          foregroundDecoration: foregroundDecoration,
          width: width,
          height: height,
          constraints: constraints,
          margin: margin,
          transform: transform,
          transformAlignment: transformAlignment,
          clipBehavior: clipBehavior,
        );
}
