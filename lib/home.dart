import 'package:flutter/material.dart';
import 'package:projekmobile/appbar.dart';
import 'package:projekmobile/komikterbaru.dart';
import 'package:projekmobile/rekomendasi.dart';
import 'package:projekmobile/tipekomik.dart';


class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       
        body: SingleChildScrollView(
          child: Column(
            children: [
              // App bar
              appBar(),
              // Isi rekomendasi
              MyRekomendasi(),
              // Tipe Komik
              tipeKomik(),
              // Isi komik terbaru
              komikterbaru()
            ],
          ),
        ),
      ),
    );
  }
}