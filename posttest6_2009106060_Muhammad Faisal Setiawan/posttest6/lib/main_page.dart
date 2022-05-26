import 'package:flutter/material.dart';
import 'package:posttest6/detailpage.dart';
import 'package:posttest6/landing.dart';
import 'package:posttest6/regispage.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    var width;
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
        backgroundColor: Color.fromARGB(255, 114, 66, 66),
        title: Container(
          width: 280,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 49, 27, 27),
          ),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Selamat datang",
                    style: TextStyle(
                      fontFamily: "Serif",
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 114, 66, 66),
                    ),
                  ),
                  const Text(
                    "Di Faisal farm",
                    style: TextStyle(
                      fontFamily: "Serif",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 114, 66, 66),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/bali.png'),
                          iconSize: 300,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => detail1(),
                                ));
                          },
                        ),
                        IconButton(
                          icon: Image.asset('assets/sapii.png'),
                          iconSize: 300,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => detail2(),
                                ));
                          },
                        ),
                        IconButton(
                          icon: Image.asset('assets/limosin.png'),
                          iconSize: 300,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => detail3(),
                                ));
                          },
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MyHomePage(),
                          ));
                    },
                    style: TextButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: Color.fromARGB(255, 114, 66, 66),
                        onSurface: Color.fromARGB(255, 114, 66, 66),
                        shadowColor: Color.fromARGB(255, 114, 66, 66),
                        elevation: 5,
                        side: BorderSide(
                          color: Color.fromARGB(255, 36, 33, 33),
                          width: 3,
                        )),
                    child: const Text(
                      "PESAN",
                      style: TextStyle(
                        fontSize: 32,
                        color: Color.fromARGB(255, 73, 41, 12),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
