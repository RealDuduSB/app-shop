import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Config extends StatefulWidget {
  const Config({Key? key}) : super(key: key);

  @override
  State<Config> createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações",
            style: GoogleFonts.lato(fontSize: 20, color: Colors.white)),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Trocar tema ",
                  style: GoogleFonts.lato(fontSize: 25, color: Colors.black)),
              Switch(
                  value: isDarkTheme,
                  onChanged: (value) {
                    setState(() {
                      isDarkTheme = value;
                    });
                  })
            ],
          )
        ],
      ),
    );
  }
}
