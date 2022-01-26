import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormNumber extends StatefulWidget {
  FormNumber({Key? key}) : super(key: key);

  @override
  State<FormNumber> createState() => _formNumberState();
}

class _formNumberState extends State<FormNumber> {
  final _formKey = GlobalKey<FormState>();
  String numInformated = "";
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) return "O campo está vazio!";
          if (value.length < 2) return "Digite pelo menos 2 números";
          return null;
        },
        onChanged: (value) => numInformated = value,
        autofocus: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Digite o número",
          hintStyle: TextStyle(fontSize: 13),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          LengthLimitingTextInputFormatter(3),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
