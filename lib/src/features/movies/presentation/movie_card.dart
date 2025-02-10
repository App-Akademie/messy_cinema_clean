import 'package:flutter/material.dart';
import 'package:messy_cinema/src/features/movies/data/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    required this.movie,
    super.key,
  });
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      width: 350,
      child: Card(
        elevation: 8.0,
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                movie.imageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.movie_outlined, size: 40.0),
                      const SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            movie.time,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(movie.description),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FilledButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Ticket zu ${movie.title}')));
                        },
                        child: const Text('Ticket kaufen'),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Vorschau zu ${movie.title}')));
                        },
                        child: const Text('Vorschau'),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
