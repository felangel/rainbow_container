import 'package:flutter/widgets.dart';
import 'package:random_color/random_color.dart';

class RainbowContainer extends StatelessWidget {
  /// The [Widget] which will be a descendant of
  /// the `RainbowContainer`.
  final Widget child;

  /// A [Container] which will change colors randomly each time
  /// the `build` method is called.
  ///
  /// ```dart
  /// RainbowContainer(
  ///   child: Text('Hello world'),
  /// );
  /// ```
  const RainbowContainer({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: RandomColor().randomColor(),
      child: child,
    );
  }
}
