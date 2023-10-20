import 'package:flutter/material.dart';
import 'package:projekmobile/models/Data.dart';
import 'package:projekmobile/detail.dart';

class MyRekomendasi extends StatelessWidget {
  const MyRekomendasi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rekomendasi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(4),
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Rekomendasi.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: buildListItem(Rekomendasi[index], context), // Menggunakan terbaru[index] untuk mendapatkan data item
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListItem(Map<String, dynamic> item, BuildContext context) {
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
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Container(
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  jenis,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// class detailrekomendasi extends StatelessWidget {
//   final String title;
//   final String genre;
//   final String deskripsi;
//   final String imagePath;

//   detailrekomendasi({
//     required this.title,
//     required this.genre,
//     required this.deskripsi,
//     required this.imagePath,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Detail Page'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(16),
//               child: Image.asset(
//                 imagePath,
//                 width: 200,
//                 height: 200,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     title,
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     genre,
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     deskripsi,
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.justify,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }