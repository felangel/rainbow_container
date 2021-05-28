import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow_container/rainbow_container.dart';

class RainbowScaffold extends StatefulWidget {
  const RainbowScaffold({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  _RainbowScaffoldState createState() => _RainbowScaffoldState();
}

class _RainbowScaffoldState extends State<RainbowScaffold> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        children: [
          RainbowContainer(
            child: widget.child,
          ),
          FloatingActionButton(
            key: const Key('__fab__'),
            onPressed: () => setState(() {}),
          ),
        ],
      ),
    );
  }
}

void main() {
  group('RainbowContainer', () {
    testWidgets('Renders the child widget', (tester) async {
      await tester.pumpWidget(
        RainbowContainer(
          child: Container(
            key: Key('__child_container__'),
          ),
        ),
      );
      expect(find.byKey(Key('__child_container__')), findsOneWidget);
    });

    testWidgets('Multiple renders result in multiple colors', (tester) async {
      await tester.pumpWidget(
        RainbowScaffold(
          child: Text(
            'Hello World',
            key: Key('__child_text'),
          ),
        ),
      );
      final initialColor = (tester
              .widgetList<Container>(find.byType(Container))
              .first
              .decoration as BoxDecoration)
          .color;
      await tester.tap(find.byKey(Key('__fab__')));
      await tester.pump();
      final nextColor = (tester
              .widgetList<Container>(find.byType(Container))
              .first
              .decoration as BoxDecoration)
          .color;
      expect(initialColor == nextColor, isFalse);
    });
  });
}
