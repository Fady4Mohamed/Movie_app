import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:moviesapp/core/utils/movie.dart';


import '../../../../data/rebo/homerebo.dart';

part 'TrindingMovies_state.dart';

class trindingmoviesCubit extends Cubit<TrindingMoviesState> {
  trindingmoviesCubit(this._homerebo) : super(TrindingMoviesInitial());
  
 final homerebo _homerebo;


 Future<void> getNewstBook() async{
  emit(TrindingMoviesloding());
    var data=await  _homerebo.fetchTrindingMovies();
    emit(TrindingMoviesloding());
   data.fold((failer) 
   {
    emit(TrindingMoviesfailer(failer.errMessage));
   }
   , (books)
   {
    emit(TrindingMoviessuccsed(books));

   });
 }
}
