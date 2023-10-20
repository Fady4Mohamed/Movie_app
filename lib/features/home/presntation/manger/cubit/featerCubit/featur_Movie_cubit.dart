import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/features/home/data/rebo/homerebo.dart';

part 'featur_Movie_state.dart';

class FeaturMovieCubit extends Cubit<FeaturMovieState> {
  FeaturMovieCubit(this._homerebo) : super(FeaturMovieInitial());

  final homerebo _homerebo;
  final List<MovieModel> Movielist = [];

  Future<void> getfeaturMovie() async {
    emit(FeaturMovieloding());
    var data = await _homerebo.fetchMovies();
    data.fold((failer) {
      emit(FeaturMoviefailure(failer.errMessage));
      print('erro');
    }, (Movies) {
      Movielist.addAll(Movies);
      emit(FeaturMoviesuccsed());
    });
  }
}
