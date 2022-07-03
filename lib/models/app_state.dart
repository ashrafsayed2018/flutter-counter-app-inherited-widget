import 'package:flutter/material.dart';

class AppState {
  final int counter;
  final MaterialColor primarySwatchColor;

  AppState({
    this.counter = 0,
    this.primarySwatchColor = Colors.blue,
  });

  // generate copy with new values
  AppState copyWith({
    int? counter,
    MaterialColor? primarySwatchColor,
  }) {
    return AppState(
      counter: counter ?? this.counter,
      primarySwatchColor: primarySwatchColor ?? this.primarySwatchColor,
    );
  }
}
