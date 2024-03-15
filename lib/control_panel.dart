import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'direction.dart';

class ControlPanel extends StatelessWidget {
  final void Function(Direction direction)? onSwipe;

  const ControlPanel({Key? key, this.onSwipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(),
      autofocus: true,
      onKey: (event) => _handleKeyEvent(event),
      child: GestureDetector(
        onVerticalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            onSwipe?.call(Direction.down);
          } else if (details.primaryVelocity! < 0) {
            onSwipe?.call(Direction.up);
          }
        },
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            onSwipe?.call(Direction.right);
          } else if (details.primaryVelocity! < 0) {
            onSwipe?.call(Direction.left);
          }
        },
      ),
    );
  }

  void _handleKeyEvent(RawKeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.keyW) {
      onSwipe?.call(Direction.up);
    } else if (event.logicalKey == LogicalKeyboardKey.keyA) {
      onSwipe?.call(Direction.left);
    } else if (event.logicalKey == LogicalKeyboardKey.keyS) {
      onSwipe?.call(Direction.down);
    } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
      onSwipe?.call(Direction.right);
    }
  }
}
