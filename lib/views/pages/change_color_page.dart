import 'package:flutter/material.dart';
import 'package:inherited_widget_tarek/views/widgets/color_item.dart';

class ChangeColorPage extends StatelessWidget {
  const ChangeColorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MaterialColor> availableColors = [
      Colors.blue,
      Colors.green,
      Colors.red,
      Colors.orange,
      Colors.purple,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change color'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: availableColors
              .map((color) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ColorItem(color: color),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
