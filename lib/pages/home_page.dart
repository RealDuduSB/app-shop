import 'package:app_shop/pages/checkout_page.dart';
import 'package:app_shop/pages/config_page.dart';
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
      appBar: AppBar(
        title: Text("Shop generic"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 70,
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Pesquisa",
                      icon: Icon(Icons.search),
                    ),
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckOutPage()));
                  },
                  icon: Icon(Icons.shopping_cart))
            ],
          ),
        ],
      ),
    );
  }
}
