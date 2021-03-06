import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_escribo/home_page.dart';

void main() {
  SystemChannels.textInput.invokeMethod('TextInput.hide');
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
