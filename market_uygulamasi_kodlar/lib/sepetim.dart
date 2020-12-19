import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[400],
            ),
          ),
        ),
        SizedBox(height: 10),
        Divider(
          color: Colors.black,
          thickness: 1.0,
        ),
        ListTile(
          title: Text("Kanepe"),
          subtitle: Text("2 Adet x 700 ₺"),
          trailing: Text("1400 ₺"),
        ),
        ListTile(
          title: Text("Buzdolabı"),
          subtitle: Text("1 Adet x 1200 ₺"),
          trailing: Text("2400 ₺"),
        ),
        ListTile(
          title: Text("Televizyon"),
          subtitle: Text("1 Adet x 4200 ₺"),
          trailing: Text("4200 ₺"),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text(
                  "Toplam Tutar",
                  style: TextStyle(
                    color: Colors.red[400],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "8000 ₺",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red[400],
            ),
            child: Center(
                child: Text(
              "Alışverişi Tamamla",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
      ],
    );
  }
}
