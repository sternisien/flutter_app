import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_app/units.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variable globale de la classe
  int index = 0;
  Color colorImage;
  String codeColor = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        title: Text(
          "Food App",
          style: TextStyle(color: Colors.blue),
        ),
        // actions: [Icon(Icons.add_alert)],
      ),
      body: Column(
        children: [
          Image.network(
              "https://www.sully-group.fr/wp-content/uploads/2019/09/UDEMY-BIS.png",
              color: colorImage),
          IconButton(
            icon: Icon(
              Icons.play_arrow,
              size: 50,
            ),
            onPressed: () {
              setState(() {
                Random r = new Random();
                MaterialAccentColor color =
                    Colors.accents.toList()[r.nextInt(Colors.accents.length)];
                colorImage = new Color(color.value);
                codeColor = colorImage.value.toString();
              });
            },
            alignment: Alignment.center,
          ),
          Text("Le code de la couleur est :" + codeColor),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.amberAccent,
        //passe l'index de la valeur sur laquelle j'ai tapé mais ne modifie pas currentIndex
        onTap: (tapIndex) {
          //permet de modifier le currentIndex par la valeur que j'ai tapé
          setState(() {
            index = tapIndex;
            if (tapIndex == 1) {
              Navigator.of(context).pushNamed(Units.tag);
            }
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "Alarme"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Units"),
        ],
      ),
    );
  }
}
