import 'package:flutter/material.dart';
import 'package:projekmobile/models/update.dart';
import 'package:projekmobile/detail.dart';

class komikterbaru extends StatelessWidget {
  const komikterbaru({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Komik Terbaru',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 500,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: terbaru.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: buildGridItem(terbaru[index], context),
                );
              },
            ),
          ),
        ],
      ),
    );
  } Widget buildGridItem(Map<String, dynamic> item, BuildContext context) 
  
  {
    final String imagePath = item['imagePath'] ?? '';
    final String cover = item['cover'] ?? '';
    final String title = item['title'] ?? '';
    final String genre = item['genre'] ?? '';
    final String deskripsi = item['deskripsi'] ?? '';
    final String jenis = item['jenis'] ?? '';
    final String status = item['status'] ?? '';
    final String author = item['author'] ?? '';
    final String rilis= item['rilis'] ?? '';
    final String artist = item['artist'] ?? '';
    final String awal = item['awal'] ?? '';
    final String akhir = item['baru'] ?? '';
    final String chapter = item['isi'] ?? '';

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => detail(
              title: title,
              genre: genre,
              deskripsi: deskripsi,
              imagePath: imagePath,
              cover: cover,
              jenis: jenis,
              status: status,
              author: author,
              artist: artist,
              rilis: rilis,
              awal: awal,
              akhir: akhir,
              chapter: chapter,
            ),
          ),
        );
      },
      child: Container(
        height: 20,
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                jenis,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}