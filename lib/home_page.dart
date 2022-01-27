import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controller/receive_number_and_check.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  String numInformated = "";
  String result = "";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            Container(
              height: 650,
              color: Colors.grey[300],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      alignment: Alignment.topCenter,
                      width: 150,
                      child: Image.asset("logo_RenatoLeal.png"),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      alignment: Alignment.topCenter,
                      child: Wrap(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                width: 300,
                                alignment: Alignment.center,
                                child: Text(
                                  "Aplicativo Web: SomaModulo3e5",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                width: 350,
                                alignment: Alignment.center,
                                child: Text(
                                  "Aplicativo que recebe um número inteiro e positivo através da caixa de texto abaixo e retorna o somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam antecessores ao número informado",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                width: 350,
                                alignment: Alignment.center,
                                child: Text(
                                  "Exemplos:",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[700],
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                              Container(
                                width: 350,
                                alignment: Alignment.center,
                                child: Text(
                                  "- Caso sua função receba o inteiro 10, ela deve retornar 23, resultante do somatório dos números 3, 5, 6 e 9 que são menores que 10.",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[500],
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              Container(
                                width: 350,
                                alignment: Alignment.center,
                                child: Text(
                                  "- Caso sua função receba o inteiro 11, ela deve retornar 33, resultante do somatório dos números 3, 5, 6, 9 e 10 que são menores que 11.",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[500],
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 15, 5, 3),
                                width: 300,
                                alignment: Alignment.center,
                                child: Text(
                                  "Instruções: ",
                                  style: GoogleFonts.lato(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Container(
                                width: 350,
                                alignment: Alignment.center,
                                child: Text(
                                  "* Não é permitido ponto(.) ou vírgula(,) entre os números",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              Container(
                                width: 350,
                                alignment: Alignment.center,
                                child: Text(
                                  "* Não é permitido nenhum caractere especial",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              Container(
                                width: 350,
                                alignment: Alignment.center,
                                child: Text(
                                  "* Somente números INTEIROS e POSITIVOS serão aceitos",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      width: 320,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 5),
                            color: Colors.grey.shade500,
                            blurRadius: 10,
                            spreadRadius: 0.5,
                          ),
                          BoxShadow(
                            offset: Offset(-5, -5),
                            color: Colors.white,
                            blurRadius: 10,
                            spreadRadius: 0.5,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Resultado: ",
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            height: 60,
                            margin: EdgeInsets.fromLTRB(12, 10, 12, 0),
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                result,
                                style: GoogleFonts.robotoMono(
                                  color: Colors.white70,
                                  fontSize: 35,
                                  textStyle:
                                      Theme.of(context).textTheme.headline2,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Text("Digite um número entre 0 e 999"),
                        ),
                      ),
                      Center(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 200,
                                child: Form(
                                  key: _formKey,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty)
                                        return "O campo está vazio!";
                                      return null;
                                    },
                                    onChanged: (value) => numInformated = value,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white54,
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
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black87,
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      setState(() {
                                        return result = receiveNumberAndCheck(
                                            numInfo: numInformated);
                                      });
                                    }
                                  },
                                  icon: Container(
                                    padding: EdgeInsets.fromLTRB(15, 12, 0, 12),
                                    child: Icon(
                                      Icons.calculate_rounded,
                                      size: 25,
                                      color: Colors.blue[700],
                                    ),
                                  ),
                                  label: Container(
                                    padding: EdgeInsets.fromLTRB(0, 12, 15, 12),
                                    child: Text(
                                      "Calcular".toUpperCase(),
                                      style: GoogleFonts.lato(
                                          color: Colors.blue[700],
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
