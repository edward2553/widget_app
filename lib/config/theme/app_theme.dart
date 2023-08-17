import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.yellowAccent
];

class AppTheme {
  final int selectedColor;
  final bool isLightMode;

  AppTheme({
    this.isLightMode = true,
    this.selectedColor = 0
  }) : 
  assert(
    selectedColor >= 0, 'Selected color must be greater than 0'
  ),
  assert(
    selectedColor <= colorList.length, 'Selected color must be less or equal than ${ colorList.length }'
  );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isLightMode ? Brightness.light : Brightness.dark,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    )
  );

  /// metodo para copiar instnacias de la clase
  AppTheme copyWith({
    int? selectedColor,
    bool? isLightMode
  }) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isLightMode: isLightMode ?? this.isLightMode,
  );

}