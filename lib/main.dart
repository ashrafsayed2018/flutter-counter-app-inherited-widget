import 'package:flutter/material.dart';
import 'package:inherited_widget_tarek/views/pages/home_page.dart';

import 'controllers/state_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // wrap material app with state controller

    return StateWidget(
      child: Builder(builder: (context) {
        final stateWidget = StateInheritedWidget.of(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter inherited widgets',
          theme: ThemeData(
            primarySwatch: stateWidget.state.primarySwatchColor,
          ),
          home: const HomePage(),
        );
      }),
    );
  }
}
