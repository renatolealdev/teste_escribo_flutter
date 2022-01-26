import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste_escribo/form_number.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                      alignment: Alignment.topCenter,
                      width: 280,
                      height: 100,
                      color: Colors.white,
                      child: SvgPicture.asset("logo_RenatoLeal.svg"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
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
                          child: Text("Digite o número desejado"),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          width: 80,
                          height: 80,
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
