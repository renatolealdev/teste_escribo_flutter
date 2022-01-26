import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Container(
      width: 120,
      child: Column(
        children: [
          Form(
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
                hintText: "Ex: 10",
                hintStyle: TextStyle(fontSize: 13),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black87,
              ),
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                child: Text(
                  "Calcular",
                  style: GoogleFonts.lato(color: Colors.white70),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
