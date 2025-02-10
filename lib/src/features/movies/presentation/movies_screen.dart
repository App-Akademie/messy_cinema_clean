import 'package:flutter/material.dart';
import 'package:messy_cinema/src/features/movies/data/movie.dart';
import 'package:messy_cinema/src/features/movies/presentation/movie_card.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({required this.movies, super.key});
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.local_movies_rounded),
        title: const Text("Batch #8 Kino"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [for (final movie in movies) MovieCard(movie: movie)],
            ),
          ],
        ),
      ),
    );
  }
}
