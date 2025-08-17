import 'package:currency_exchange_project/currency_converter_material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(home: CurrencyConverterMaterialpage()));
  }
}
