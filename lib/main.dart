import 'package:flutter/material.dart';
import 'package:predictor/homePage.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    title: 'Predictor',
    home: HomePage(),
  ),
  );
}