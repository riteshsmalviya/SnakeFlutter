import 'package:flutter/material.dart';
import 'direction.dart';

class ControlPanel extends StatelessWidget {
  final void Function(Direction direction)? onSwipe;

  const ControlPanel({Key? key, this.onSwipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 50.0,
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
}
