// abstrakt, da sie nur eine "Vorlage" darstellt
import 'package:messy_cinema/src/features/movies/data/movie.dart';

abstract class MovieRepository {
  List<Movie> getMovies();
}
