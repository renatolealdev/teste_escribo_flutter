import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste_escribo/form_number_and_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                                  "Aplicativo que recebe um número inteiro e positivo através da caixa de texto abaixo e retorna o somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao número informado",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
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
                  flex: 2,
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
                          child: FormNumber(),
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
