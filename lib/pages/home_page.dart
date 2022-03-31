import 'package:app_shop/pages/checkout_page.dart';
import 'package:app_shop/pages/config_page.dart';
import 'package:app_shop/pages/sobre.dart';
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
              ListTile(
                title: Text("Sobre",
                    style: GoogleFonts.lato(fontSize: 27, color: Colors.black)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sobre()),
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.filter_list_alt)),
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
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orangeAccent,
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Ofertas (-10%)",
                  style: GoogleFonts.lato(fontSize: 27, color: Colors.black),
                ),
                Container(
                  height: 200,
                  width: 250,
                  color: Colors.blue,
                ),
              ],
            )
          ],
        ));
  }
}
