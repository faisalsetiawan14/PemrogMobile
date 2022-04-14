import 'dart:ui';
import 'package:flutter/material.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("POSTTEST Faisal  "),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 114, 66, 66),
      ),
      backgroundColor: Color.fromARGB(255, 114, 66, 66),
      body: ListView(
        children: [
          Text(
            " \nJUAL SAPI QURBAN ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 249, 243, 243),
            ),
          ),
          Text(
            "\nAMANAH",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 221, 174, 174)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65),
                  image: DecorationImage(
                      image: AssetImage("assets/sapi.jpg"), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuContainer(isActive: true, menu: "Jenis Sapi"),
                  MenuContainer(menu: "Pesan"),
                ],
              ),
              Container(
                width: 350,
                height: 190,
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65),
                  image: DecorationImage(
                      image: AssetImage("assets/alamat.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
              Text(
                "Alamat lokasi ternak ",
                style: TextStyle(color: Color.fromARGB(255, 255, 249, 249)),
              ),
              MyButton()
            ],
          ),
        ],
      ),
    );
  }
}

class MenuContainer extends StatelessWidget {
  const MenuContainer({Key? key, this.isActive = false, required this.menu})
      : super(key: key);

  final bool isActive;
  final String menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive
            ? Color.fromARGB(255, 75, 10, 13)
            : Color.fromARGB(255, 75, 10, 13),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: Color.fromARGB(255, 194, 174, 175),
        ),
      ),
      child: Text(
        menu,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color.fromARGB(255, 255, 252, 251),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 20,
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 41, 27, 28),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Copyright tani rojo koyo makroman",
        style: TextStyle(
          color: Color.fromARGB(255, 245, 242, 242),
        ),
      ),
    );
  }
}
