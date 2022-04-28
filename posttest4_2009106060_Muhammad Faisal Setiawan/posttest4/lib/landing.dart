import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:posttest4/main_page.dart';
import 'package:posttest4/regispage.dart';

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
                      image: AssetImage("assets/bali.png"), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Mainpage(), 
                    ));
                },
                style: TextButton.styleFrom(
                  alignment: Alignment.topLeft,
                  backgroundColor: Color.fromARGB(255, 182, 169, 169),
                  shadowColor: Color.fromARGB(255, 182, 169, 169),
                  elevation: 3,
                  side: BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 41, 31, 31),
                  ),
                ),
                child: const Text(
                  "Jenis Jenis Sapi",
                  style: TextStyle(
                    fontSize: 26,
                    color: Color.fromARGB(255, 59, 53, 53),
                  ),
                ),
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
            ],
          ),
        ],
      ),
    );
  }
}
