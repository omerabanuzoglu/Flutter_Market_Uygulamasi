import 'package:flutter/material.dart';
import 'package:market_uygulamasi/urun_detay.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe;

  @override
  void initState() {
    super.initState();
    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        urunKarti(
          "Ekmek",
          "1,5 ₺",
          "https://cdn.pixabay.com/photo/2019/11/21/14/46/bread-4642686_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Patates",
          "4,5 ₺",
          "https://cdn.pixabay.com/photo/2018/06/20/08/50/wood-3486048_960_720.jpg",
        ),
        urunKarti(
          "İncir",
          "8,25 ₺",
          "https://cdn.pixabay.com/photo/2017/03/10/21/04/fresh-2133722_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Fındık",
          "25,75 ₺",
          "https://cdn.pixabay.com/photo/2018/11/30/13/46/hazelnuts-3847814_960_720.jpg",
        ),
        urunKarti(
          "Patates",
          "4,5 ₺",
          "https://cdn.pixabay.com/photo/2018/06/20/08/50/wood-3486048_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Ekmek",
          "1,5 ₺",
          "https://cdn.pixabay.com/photo/2019/11/21/14/46/bread-4642686_960_720.jpg",
        ),
        urunKarti(
          "Fındık",
          "25,75 ₺",
          "https://cdn.pixabay.com/photo/2018/11/30/13/46/hazelnuts-3847814_960_720.jpg",
        ),
      ];
    } else if (widget.kategori == "Şekerleme") {
      gosterilecekListe = [
        urunKarti(
          "Dut",
          "15 ₺",
          "https://cdn.pixabay.com/photo/2010/12/13/10/05/berries-2277_960_720.jpg",
        ),
        urunKarti(
          "Armut",
          "5 ₺",
          "https://cdn.pixabay.com/photo/2016/07/22/09/59/fruit-1534494_960_720.jpg",
        ),
        urunKarti(
          "Üzüm",
          "3,5 ₺",
          "https://cdn.pixabay.com/photo/2015/03/26/09/45/grapes-690230_960_720.jpg",
        ),
        urunKarti(
          "Çilek",
          "7,5 ₺",
          "https://cdn.pixabay.com/photo/2017/11/18/17/09/strawberry-2960533_960_720.jpg",
        ),
        urunKarti(
          "Elma",
          "3 ₺",
          "https://cdn.pixabay.com/photo/2017/09/26/13/21/apple-2788599_960_720.jpg",
        ),
      ];
    } else if (widget.kategori == "İçecekler") {
      gosterilecekListe = [
        urunKarti(
          "Ladde",
          "15 ₺",
          "https://cdn.pixabay.com/photo/2015/10/12/14/54/coffee-983955_960_720.jpg",
        ),
        urunKarti(
          "Bitki Çayı",
          "7 ₺",
          "https://cdn.pixabay.com/photo/2017/05/30/12/21/green-tea-2356770_960_720.jpg",
        ),
        urunKarti(
          "Kahve",
          "12 ₺",
          "https://cdn.pixabay.com/photo/2012/02/23/09/16/coffee-15994_960_720.jpg",
        ),
        urunKarti(
          "Çay",
          "4 ₺",
          "https://cdn.pixabay.com/photo/2017/03/01/05/12/tea-cup-2107599_960_720.jpg",
        ),
        urunKarti(
          "Şampanya",
          "50 ₺",
          "https://cdn.pixabay.com/photo/2017/01/09/02/02/pink-wine-1964457_960_720.jpg",
        )
      ];
    } else if (widget.kategori == "Temizlik") {
      gosterilecekListe = [
        urunKarti(
          "Süpürge",
          "250 ₺",
          "https://cdn.pixabay.com/photo/2014/02/17/14/28/vacuum-cleaner-268179_960_720.jpg",
        ),
        urunKarti(
          "Sıvı Sabun",
          "12 ₺",
          "https://cdn.pixabay.com/photo/2017/05/23/16/23/soap-dispenser-2337697_960_720.jpg",
        ),
        urunKarti(
          "Peçete",
          "15 ₺",
          "https://cdn.pixabay.com/photo/2020/03/27/17/03/shopping-4974313_960_720.jpg",
        ),
        urunKarti(
          "Paspas",
          "25 ₺",
          "https://cdn.pixabay.com/photo/2014/02/17/13/34/cleaning-268126_960_720.jpg",
        )
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => UrunDetay(
              isim: isim,
              fiyat: fiyat,
              resimYolu: resimYolu,
              mevcut: mevcut,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(resimYolu),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 8),
            Text(
              isim,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              fiyat,
              style: TextStyle(
                fontSize: 14,
                color: Colors.red[400],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 1,
      padding: EdgeInsets.all(12),
      children: gosterilecekListe,
    );
  }
}
