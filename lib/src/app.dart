import 'package:flutter/material.dart';
import 'package:messy_cinema/src/features/movies/data/movie.dart';
import 'package:messy_cinema/src/features/movies/presentation/movies_screen.dart';

class App extends StatelessWidget {
  const App({required this.movies, super.key});
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
      ),
      home: MoviesScreen(
        movies: movies,
      ),
    );
  }
}
