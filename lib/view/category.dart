import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';

class CategoryPage extends StatelessWidget {
  final String categoryName;

  const CategoryPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    const navyColor = Color(0xFF1B263B);
    const yellowColor = Color(0xFFF4A261);

    final filteredMovies = dummyMovies.where((m) => m.country == categoryName).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFFDF6E2),
      appBar: AppBar(
        title: Text('Daftar Film $categoryName'),
        backgroundColor: navyColor,
        foregroundColor: Colors.white,
      ),
      body: filteredMovies.isEmpty
          ? const Center(child: Text('Belum ada film untuk kategori ini'))
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: filteredMovies.length,
              itemBuilder: (context, index) {
                final movie = filteredMovies[index];
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            movie.poster,
                            width: 65,
                            height: 75,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(
                              width: 65,
                              height: 75,
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
                              Text(movie.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              const SizedBox(height: 4),
                              Text('${movie.genre} (${movie.releaseYear})', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                              const SizedBox(height: 4),
                              Text('📺 ${movie.episodes}', style: const TextStyle(fontSize: 11, color: navyColor, fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: yellowColor,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/detail', arguments: movie.id);
                          },
                          child: const Text('Baca Info', style: TextStyle(color: Colors.white, fontSize: 11)),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}