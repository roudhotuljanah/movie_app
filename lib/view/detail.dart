 
import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'package:readmore/readmore.dart';

class Detail extends StatelessWidget {
  final int movieId;

  const Detail({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    const navyColor = Color(0xFF1B263B);
    const yellowColor = Color(0xFFF4A261);

    final movie = dummyMovies.firstWhere(
      (m) => m.id == movieId,
      orElse: () => dummyMovies.first,
    );

    return Scaffold(
      backgroundColor: const Color(0xFFFDF6E2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  movie.banner,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: double.infinity,
                    height: 250,
                    color: navyColor,
                    child: const Icon(Icons.movie, size: 80, color: Colors.white54),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: navyColor)),
                  const SizedBox(height: 6),
                  Text(
                    '${movie.country} • ${movie.genre} • ${movie.releaseYear}',
                    style: const TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.star, color: yellowColor, size: 20),
                      Text(' ${movie.rating} / 10', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      const SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: yellowColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '📺 ${movie.episodes}',
                          style: const TextStyle(fontWeight: FontWeight.bold, color: navyColor, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Sinopsis', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: navyColor)),
                  const SizedBox(height: 8),
                  ReadMoreText(
                    movie.synopsis,
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Selengkapnya',
                    trimExpandedText: ' Sembunyikan',
                    moreStyle: const TextStyle(color: yellowColor, fontWeight: FontWeight.bold),
                    lessStyle: const TextStyle(color: yellowColor, fontWeight: FontWeight.bold),
                    style: const TextStyle(color: Colors.black87, height: 1.4),
                  ),
                  const SizedBox(height: 22),
                  const Text('Pemain Utama', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: navyColor)),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: movie.cast
                        .map((actor) => Chip(
                              backgroundColor: Colors.white,
                              side: const BorderSide(color: yellowColor),
                              label: Text(actor, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}