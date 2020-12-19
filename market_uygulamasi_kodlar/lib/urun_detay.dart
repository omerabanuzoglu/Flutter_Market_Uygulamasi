import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {
  final String isim;
  final String fiyat;
  final String resimYolu;
  final bool mevcut;

  const UrunDetay({Key key, this.isim, this.fiyat, this.resimYolu, this.mevcut})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(resimYolu),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                  size: 40,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Text(
                isim,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                fiyat,
                style: TextStyle(
                  color: Colors.red[400],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Bu bölüm ürün açıklaması bölümüdür. Buraya istediğiniz açıklamayaı yaparak ürün hakkında detaylar verebilirsiniz.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: mevcut ? Colors.red[400] : Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    mevcut ? "Sepete Ekle" : "Stokta Yok",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
