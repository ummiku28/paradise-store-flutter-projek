import 'package:flutter/material.dart';
import 'package:shop/pages/HomePage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selamat Datang"),
      ),
      body: Container( // Gunakan Container untuk latar belakang
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"), // Ganti dengan path gambar latar belakang Anda
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 170), // Geser ke atas sejauh 100 piksel
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Selamat datang",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Text(
                "di Paradise Shoes",
                style: TextStyle(
                  fontSize: 24,
                   fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Roboto',
                    color: Colors.blue,
                ),
              ),
             Padding(
                padding: EdgeInsets.only(top: 185), // Geser tombol ke bawah sejauh 20 piksel
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/home");
                  },
                  child: Text("Lanjutkan"),
              ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
