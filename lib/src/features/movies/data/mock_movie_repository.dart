import 'package:messy_cinema/src/features/movies/data/movie.dart';
import 'package:messy_cinema/src/features/movies/data/movie_repository.dart';

class MockMovieRepository implements MovieRepository {
  @override
  List<Movie> getMovies() {
    return <Movie>[
      Movie(
        title: 'Star Wars',
        description: 'Lorem ipsum',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFKJCBk8oZmcBxsggKRhslIg6Pp2qsE9Pmmg&usqp=CAU',
        time: '20:15 - 23:05',
      ),
      Movie(
        title: 'Herr der Ringe',
        description: 'Lorem ipsum',
        imageUrl:
            'https://de.web.img3.acsta.net/r_654_368/img/95/3b/953bf396a9308be856e10b7075d2c570.jpg',
        time: '18:00 - 21:13',
      ),
      Movie(
        title: 'Harry Potter',
        description: 'Lorem ipsum',
        imageUrl:
            'https://images.cgames.de/images/gsgp/290/harry-potter-filme_6229276.jpg',
        time: '10:00 - 12:30',
      ),
    ];
  }
}
