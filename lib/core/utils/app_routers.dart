import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/features/Movie/presntation/views/MovieVeiw.dart';
import 'package:moviesapp/features/home/presntation/views/HomeView.dart';
import 'package:moviesapp/features/home/presntation/views/SearchView.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kMovieView = '/MovieView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeVeiw(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kMovieView,
        builder: (context, state) =>  MovieView( movie: state.extra as MovieModel ),
      ),
    ],
  );
}