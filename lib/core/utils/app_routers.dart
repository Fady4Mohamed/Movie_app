import 'package:go_router/go_router.dart';
import 'package:moviesapp/features/home/presntation/views/HomeView.dart';
import 'package:moviesapp/features/home/presntation/views/SearchView.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kMovieDetailsView = '/MoveiDetailsView';
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
      
    ],
  );
}