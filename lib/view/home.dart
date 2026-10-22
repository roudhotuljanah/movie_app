import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const navyColor = Color(0xFF1B263B);
    const yellowColor = Color(0xFFF4A261);

    return Scaffold(
      backgroundColor: const Color(0xFFFDF6E2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Biru Donker khas Soal UTS
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: navyColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Selamat Datang', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text('Info film apa yang kamu butuhkan?', style: TextStyle(color: Colors.white70, fontSize: 13)),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: yellowColor,
                          child: const Icon(Icons.movie, color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan judul film',
                        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                        prefixIcon: const Icon(Icons.search, color: yellowColor),
                        suffixIcon: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(color: yellowColor, borderRadius: BorderRadius.circular(8)),
                          child: const Icon(Icons.mic, color: Colors.white),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(vertical: 0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Kategori Negara
                    const Text('Kategori Negara', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _categoryButton(context, 'Korea', Icons.flag, yellowColor),
                        _categoryButton(context, 'Thailand', Icons.flag_outlined, yellowColor),
                        _categoryButton(context, 'China', Icons.outlined_flag, yellowColor),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Film Populer Horizontal
                    const Text('Film Populer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dummyMovies.length,
                        itemBuilder: (context, index) {
                          final movie = dummyMovies[index];
                          return GestureDetector(
                            onTap: () => Navigator.pushNamed(context, '/detail', arguments: movie.id),
                            child: Container(
                              width: 120,
                              margin: const EdgeInsets.only(right: 12),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  movie.poster,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) => Container(
                                    color: Colors.grey.shade300,
                                    child: const Icon(Icons.movie, size: 40, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Film Terbaru Vertikal (Tanpa Overflow)
                    const Text('Film Terbaru', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: dummyMovies.length,
                      itemBuilder: (context, index) {
                        final movie = dummyMovies[index];
                        return Card(
                          color: Colors.white,
                          margin: const EdgeInsets.only(bottom: 10),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    movie.poster,
                                    width: 55,
                                    height: 70,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) => Container(
                                      width: 55,
                                      height: 70,
                                      color: Colors.grey.shade300,
                                      child: const Icon(Icons.movie, color: Colors.grey),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        movie.title,
                                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '${movie.country} • ${movie.genre}',
                                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 4),
                                      Text('⭐ ${movie.rating}', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.amber)),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 8),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: yellowColor,
                                    elevation: 0,
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                  ),
                                  onPressed: () => Navigator.pushNamed(context, '/detail', arguments: movie.id),
                                  child: const Text('Baca Info', style: TextStyle(color: Colors.white, fontSize: 11)),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _categoryButton(BuildContext context, String title, IconData icon, Color yellowColor) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/category', arguments: title),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(color: yellowColor, borderRadius: BorderRadius.circular(15)),
            child: Icon(icon, color: Colors.white, size: 24),
          ),
          const SizedBox(height: 5),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        ],
      ),
    );
  }
}