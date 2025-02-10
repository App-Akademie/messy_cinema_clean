import 'package:flutter/material.dart';
import 'package:messy_cinema/src/app.dart';
import 'package:messy_cinema/src/features/movies/data/mock_movie_repository.dart';

void main() {
  final repo = MockMovieRepository();
  final movies = repo.getMovies();

  runApp(
    App(
      movies: movies,
    ),
  );
}
