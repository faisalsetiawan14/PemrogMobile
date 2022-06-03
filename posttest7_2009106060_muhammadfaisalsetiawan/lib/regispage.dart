import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'alert.dart';
import 'landing.dart';
import 'main_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

  Container pesanan(String nama, String alamat, String jenis, String usia,
      bool isStatusPembayaran, Function delete, Function update) {
    AlertDialog alert = AlertDialog(
      title: Text("Konfirmasi"),
      content: Container(
        child: Text("Apakah anda ingin mengubah status pembayaran"),
      ),
      actions: [
        TextButton(
          child: Text('TIDAK'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
            child: Text('YA'),
            onPressed: () {
              update();
              Navigator.of(context).pop();
            }),
      ],
    );

    return Container(
        width: double.infinity,
        height: 180,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Pembeli : $nama",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "Alamat Pembeli : $alamat",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "Pembayaran : ${isStatusPembayaran ? "Lunas" : "Belum lunas"}",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              "Pembelian : ${jenis}",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      delete();
                    },
                    child: Text("Hapus")),
                ElevatedButton(
                    onPressed: () {
                      showDialog(context: context, builder: (context) => alert);
                    },
                    child: Text("Update"))
              ],
            ),
          ],
        ));
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
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference order = firestore.collection("Order");
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 114, 66, 66),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
                child: Image.asset('assets/kandang.png'),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Mainpage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Order"),
                leading: Icon(Icons.shopping_cart),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MyHomePage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Exit"),
                leading: Icon(Icons.close),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Landingpage(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "POSSTEST Faisal",
          style: TextStyle(
            color: Color.fromARGB(255, 61, 26, 26),
            fontSize: 20,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 114, 66, 66),
      ),
      backgroundColor: Color.fromARGB(255, 114, 66, 66),
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
                  order.add({
                    'nama': ctrlNama.text,
                    'alamat': ctrlAlamat.text,
                    'jenisSapi': getJenis(jenis),
                    'pembayaran': isStatusPembayaran,
                    'usia': ctrlUsia.text,
                  });
                  CustomAlert(context, 'berhasil');
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
              SizedBox(height: 20),
              Container(
                padding:EdgeInsets.only(bottom: 5),
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  //                   <--- left side
                  color: Colors.grey,
                  width: 1,
                ))),
                child: const Text(
                  "Riwayat Pembelian",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              StreamBuilder<QuerySnapshot>(
                  stream: order.snapshots(),
                  builder: (_, snapshot) {
                    return (snapshot.hasData)
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: snapshot.data!.docs
                                .map((e) => pesanan(
                                        e.get('nama'),
                                        e.get('alamat'),
                                        e.get('jenisSapi'),
                                        e.get('usia'),
                                        e.get('pembayaran'), () {
                                      order.doc(e.id).delete();
                                    }, () {
                                      order.doc(e.id).update({
                                        'pembayaran': !e.get('pembayaran'),
                                      });
                                    }))
                                .toList(),
                          )
                        : const Text('Loading...');
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
