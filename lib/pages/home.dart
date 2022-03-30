import 'package:app_shop/pages/configpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person, color: Color.fromRGBO(0, 0, 0, 1)),
              title: Text("Configurações",
                  style: GoogleFonts.lato(fontSize: 27, color: Colors.black)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Config()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(),
    );
  }
}
