import 'package:flutter/material.dart';
import 'package:market_uygulamasi/kategori.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  TabController tvcontroller;

  @override
  void initState() {
    super.initState();
    tvcontroller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tvcontroller,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.red[400],
          isScrollable: true,
          tabs: [
            Tab(child: Text("Temel Gıda")),
            Tab(child: Text("Şekerleme")),
            Tab(child: Text("İçecekler")),
            Tab(child: Text("Temizlik")),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tvcontroller,
            children: [
              Kategori(kategori: "Temel Gıda"),
              Kategori(kategori: "Şekerleme"),
              Kategori(kategori: "İçecekler"),
              Kategori(kategori: "Temizlik"),
            ],
          ),
        ),
      ],
    );
  }
}
