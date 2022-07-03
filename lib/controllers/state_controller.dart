import 'package:flutter/material.dart';
import 'package:inherited_widget_tarek/models/app_state.dart';

class StateWidget extends StatefulWidget {
  final Widget child;
  const StateWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  var state = AppState();
  void increment() {
    final counter = state.counter + 1;
    final newState = state.copyWith(counter: counter);
    setState(() {
      state = newState;
    });
  }

  // change color
  void changeColor(MaterialColor color) {
    final newState = state.copyWith(primarySwatchColor: color);
    setState(() {
      state = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StateInheritedWidget(
      appState: state,
      state: this,
      child: widget.child,
    );
  }
}

class StateInheritedWidget extends InheritedWidget {
  final AppState appState;
  // ignore: library_private_types_in_public_api
  final _StateWidgetState state;

  const StateInheritedWidget({
    Key? key,
    required super.child,
    required this.appState,
    // ignore: library_private_types_in_public_api
    required this.state,
  }) : super(
          key: key,
        );

  // ignore: library_private_types_in_public_api
  static _StateWidgetState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<StateInheritedWidget>()!.state;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) =>
      oldWidget != this;
}
