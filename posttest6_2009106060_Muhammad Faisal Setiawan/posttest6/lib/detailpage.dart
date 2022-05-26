import 'package:flutter/material.dart';
import 'package:posttest6/landing.dart';
import 'package:posttest6/main_page.dart';
import 'package:posttest6/regispage.dart';

class detail1 extends StatelessWidget {
  const detail1({Key? key}) : super(key: key);

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
            color: Color.fromARGB(255, 88, 19, 19),
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Sapi Bali",
                style: TextStyle(
                  fontFamily: "serif",
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                width: lebar,
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/bali.png'),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "Sapi bali adalah jenis sapi peliharaan yang merupakan bentuk domestik dari banteng",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: Alignment(-1.0, -1.0),
                child: const Text(
                  "Berat = 250kg",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 30,
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
                    elevation: 5,
                    side: BorderSide(
                      color: Color.fromARGB(255, 114, 66, 66),
                      width: 3,
                    )),
                child: const Text(
                  "ORDER",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
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
                    alignment: Alignment.center,
                    backgroundColor: Color.fromARGB(255, 114, 66, 66),
                    elevation: 5,
                    side: BorderSide(
                      color: Color.fromARGB(255, 114, 66, 66),
                      width: 3,
                    )),
                child: const Text(
                  "BACK",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class detail2 extends StatelessWidget {
  const detail2({Key? key}) : super(key: key);

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
            color: Color.fromARGB(255, 88, 19, 19),
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Sapi Limosin",
                style: TextStyle(
                  fontFamily: "serif",
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                width: lebar,
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/limosin.png'),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "Sapi Limousin merupakan salah satu jenis sapi potong yang sedang dikembangkan di Indonesia.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: Alignment(-1.0, -1.0),
                child: const Text(
                  "Berat = 300kg",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 30,
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
                    elevation: 5,
                    side: BorderSide(
                      color: Color.fromARGB(255, 114, 66, 66),
                      width: 3,
                    )),
                child: const Text(
                  "ORDER",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
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
                    alignment: Alignment.center,
                    backgroundColor: Color.fromARGB(255, 114, 66, 66),
                    elevation: 5,
                    side: BorderSide(
                      color: Color.fromARGB(255, 114, 66, 66),
                      width: 3,
                    )),
                child: const Text(
                  "BACK",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class detail3 extends StatelessWidget {
  const detail3({Key? key}) : super(key: key);

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
            color: Color.fromARGB(255, 88, 19, 19),
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Sapi Simental",
                style: TextStyle(
                  fontFamily: "serif",
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                width: lebar,
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/sapii.png'),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "Simmental atau Swiss Fleckvieh adalah salah satu ras sapi. Ras ini mengambil nama Simmental, nama sebuah lembah dari Sungai Simme di Bernese Oberland, Kanton Bern, Swiss",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: Alignment(-1.0, -1.0),
                child: const Text(
                  "Berat = 500kg",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 30,
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
                    elevation: 5,
                    side: BorderSide(
                      color: Color.fromARGB(255, 114, 66, 66),
                      width: 3,
                    )),
                child: const Text(
                  "ORDER",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
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
                    alignment: Alignment.center,
                    backgroundColor: Color.fromARGB(255, 114, 66, 66),
                    elevation: 5,
                    side: BorderSide(
                      color: Color.fromARGB(255, 114, 66, 66),
                      width: 3,
                    )),
                child: const Text(
                  "BACK",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
