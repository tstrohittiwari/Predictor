import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictor/homePage.dart';


void main() {
  runApp(

    MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        useMaterial3: true,
        ),title: 'Predictor',
      home: HomePage(),
      ),
  );
}

