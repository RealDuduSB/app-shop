import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sobre extends StatelessWidget {
  const Sobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Versão: 0.0.0",
          style: GoogleFonts.lato(fontSize: 27, color: Colors.black),
        ),
      ),
    );
  }
}
