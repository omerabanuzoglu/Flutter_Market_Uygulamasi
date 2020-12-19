import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_uygulamasi/sepetim.dart';
import 'package:market_uygulamasi/urunler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Projem",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktifIcerik = 0;

  List<Widget> _icerikler;

  @override
  void initState() {
    super.initState();

    _icerikler = [
      Urunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Market Uygulaması",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
      body: _icerikler[_aktifIcerik],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerik,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Ürünler"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Sepetim"),
          ),
        ],
        onTap: (int a) {
          setState(() {
            _aktifIcerik = a;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Ömer Abanuzoğlu"),
              accountEmail: Text("omerr.poyrazz@gmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://scontent.fesb4-1.fna.fbcdn.net/v/t1.0-9/61064359_668052170291342_8476492784746889216_n.jpg?_nc_cat=107&ccb=2&_nc_sid=8bfeb9&_nc_ohc=4qgZ0cz3gGIAX_RHibR&_nc_ht=scontent.fesb4-1.fna&oh=20e9256dddabea6cd472045514509bda&oe=6004D9C6",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),
            ListTile(
              title: Text("Siparişlerim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("İndirimlerim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Ayarlar"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Çıkış Yap"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
