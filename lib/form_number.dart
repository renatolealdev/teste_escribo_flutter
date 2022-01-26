import 'package:flutter/material.dart';

class FormNumber extends StatefulWidget {
  FormNumber({Key? key}) : super(key: key);

  @override
  State<FormNumber> createState() => _formNumberState();
}

class _formNumberState extends State<FormNumber> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(),
    );
  }
}
