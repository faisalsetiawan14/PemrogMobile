import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _State();
}

enum Jenis { Sapi_Limosin, Sapi_Bali, Sapi_Simental }

class _State extends State<MyHomePage> {
  String Nama = '', Alamat = '', Usia = '';
  bool isStatusPembayaran = false;
  Jenis jenis = Jenis.Sapi_Limosin;
  final ctrlNama = TextEditingController();
  final ctrlAlamat = TextEditingController();
  final ctrlUsia = TextEditingController();
  @override
  void dispose() {
    ctrlNama.dispose();
    ctrlAlamat.dispose();
    ctrlUsia.dispose();
  }
  

  String getJenis(Jenis? value) {
    if (value == Jenis.Sapi_Bali) {
      return "Sapi Bali dengan berat Berat 250 KG";
    } else if (value == Jenis.Sapi_Simental) {
      return "Sapi Simental dengan berat Berat 500 KG";
    }
    return 'Sapi Limosin dengan berat Berat 300 KG';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "POSSTEST 3 Faisal",
          style: TextStyle(
            color: Color.fromARGB(255, 61, 26, 26),
            fontSize: 20,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 131, 108, 5),
      ),
      backgroundColor:  Color.fromARGB(255, 131, 108, 5),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Column(
            children: [
              Text(
                "Pilih jenis sapi qurban anda",
                    style: TextStyle(
                    letterSpacing: 4,
                    wordSpacing: 3,
                    height: 4,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
              ),
              TextField(
                controller: ctrlNama,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Tulis nama anda...",
                  labelText: "Nama",
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: ctrlAlamat,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Tulis alamat anda...",
                  labelText: "Alamat",
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: ctrlUsia,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Tulis usia anda...",
                  labelText: "Usia",
                ),
              ),
              ListTile(
                title: Text("Sapi Limosin "),
                leading: Radio(
                  groupValue: jenis,
                  value: Jenis.Sapi_Limosin,
                  onChanged: (Jenis? value) {
                    setState(() {
                      jenis = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Sapi Bali "),
                leading: Radio(
                  groupValue: jenis,
                  value: Jenis.Sapi_Bali,
                  onChanged: (Jenis? value) {
                    setState(() {
                      jenis = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Sapi Simental "),
                leading: Radio(
                  groupValue: jenis,
                  value: Jenis.Sapi_Simental,
                  onChanged: (Jenis? value) {
                    setState(() {
                      jenis = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Langsung pembayaran cash"),
                leading: Checkbox(
                  value: isStatusPembayaran,
                  onChanged: (bool? value) {
                    setState(() {
                      isStatusPembayaran = value!;
                    });
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Nama = ctrlNama.text;
                    Alamat = ctrlAlamat.text;
                  });
                },
                child: Text(
                  "Tampilan",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Text(
                "Nama Pembeli : $Nama",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                "Alamat Pembeli : $Alamat",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                "Pembayaran : ${isStatusPembayaran ? "Lunas" : "Belum lunas"}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                "Pembelian : ${getJenis(jenis)}",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}