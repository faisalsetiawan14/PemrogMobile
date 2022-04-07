import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("POSTTEST 1 Faisal 060"), //untuk judul tittle
        backgroundColor: Color.fromARGB(255, 73, 49, 49),
      ),
      body: Container(
        padding: const EdgeInsets.all(1),
        width: lebar,
        height: tinggi,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.centerLeft,
              colors: [
                Color.fromARGB(255, 190, 201, 170),
                Color.fromARGB(255, 107, 52, 52),
                Color.fromARGB(255, 190, 201, 170),
              ]),
        ),
        child: Container(
          width: lebar / 0.5,
          height: tinggi / 7,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 190, 201, 170),
              Color.fromARGB(255, 107, 52, 52),
            ]),
            border: Border.all(
              color: Color.fromARGB(255, 107, 52, 52),
              width: 10,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Text(
            "JUAL SAPI QURBAN Minat dm ig @faisalnx",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 255, 255, 255),
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
