import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            color: Colors.grey[400],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      alignment: Alignment.topCenter,
                      width: 150,
                      child: Image.asset("logo_RenatoLeal.png"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      alignment: Alignment.topCenter,
                      child: Wrap(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                width: 300,
                                alignment: Alignment.center,
                                child: Text(
                                  "Aplicativo Web: SomaModulo3e5",
                                  style: GoogleFonts.lato(
                                    fontSize: 18,
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
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      width: 320,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 2),
                            color: Colors.grey.shade600,
                            blurRadius: 10,
                            spreadRadius: 0.5,
                          ),
                          BoxShadow(
                            offset: Offset(-2, -2),
                            color: Colors.grey.shade50,
                            blurRadius: 10,
                            spreadRadius: 0.5,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Container(
                          color: Colors.black87,
                          margin: EdgeInsets.all(12),
                          child: Center(
                            child: Text(
                              "0123456789",
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
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          child: Text("Digite um número entre 0 e 999"),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Container(
                            width: 120,
                            child: Column(
                              children: [
                                Form(
                                  key: _formKey,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty)
                                        return "O campo está vazio!";
                                      if (value.length < 2)
                                        return "Digite pelo menos 2 números";
                                      return null;
                                    },
                                    onChanged: (value) => numInformated = value,
                                    autofocus: true,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white38,
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
                                      padding:
                                          EdgeInsets.fromLTRB(10, 8, 10, 8),
                                      child: Text(
                                        "Calcular",
                                        style: GoogleFonts.lato(
                                            color: Colors.white70),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
