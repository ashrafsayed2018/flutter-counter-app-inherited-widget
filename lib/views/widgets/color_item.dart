import 'package:flutter/material.dart';
import 'package:inherited_widget_tarek/controllers/state_controller.dart';

class ColorItem extends StatelessWidget {
  final MaterialColor color;
  const ColorItem({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stateWidget = StateInheritedWidget.of(context);
    return InkWell(
      onTap: () {
        stateWidget.changeColor(color);

        Navigator.pop(context);
      },
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
