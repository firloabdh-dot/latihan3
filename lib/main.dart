import 'package:flutter/material.dart';

void main() {
  runApp(const Directur());
}

class Directur extends StatelessWidget {
  const Directur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'KOLEKSI KUROSAWA',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4.0, 
                    shadows: [
                      Shadow(
                        offset: Offset(4, 4),
                        blurRadius: 8,
                        color: Colors.black38,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                
                Film(judulFilm: 'Seven Samurai'),
                SizedBox(height: 5),
                Text(
                  'Rating: OMAGATTT MASTERPIECE!!!!',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    backgroundColor: Colors.amberAccent,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Sebuah mahakarya epik tentang sekelompok samurai yang disewa untuk melindungi sebuah desa dari serangan bandit. Film ini sangat panjang namun setiap detiknya penuh dengan ketegangan dan filosofi.',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 30),
                
                Film(judulFilm: 'RAN'),
                SizedBox(height: 5),
                Text(
                  'Status: Restorasi 4K Tersedia',
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Format VHS (Habis Terjual)',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Film extends StatelessWidget {
  static const String namaSutradara = 'Akira Kurosawa';
  final String judulFilm;
  
  const Film({super.key, required this.judulFilm});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Film $judulFilm disutradarai oleh $namaSutradara.',
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}