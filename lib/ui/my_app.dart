import 'package:flutter/material.dart';
import 'pages/converter_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // aquí agregamos el MaterialApp al árbol de widgets
  @override
  Widget build(BuildContext context) {
    // Omar Daniel
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency converter',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const ConverterPage(),
      // home: const Text('aquí colocamos ConverterPage')
    );
  }
}
