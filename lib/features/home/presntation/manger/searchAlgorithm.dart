
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/features/home/presntation/manger/cubit/featerCubit/featur_Movie_cubit.dart';

class Search{

 static List<MovieModel> searchAlgorethem(String bookName,BuildContext context){

 List<MovieModel> Movies= BlocProvider.of<FeaturMovieCubit>(context).Movielist;
  List<MovieModel> searhedMovies=[];
  for(int i=0;i<Movies.length;i++){
    if(Movies[i].title!.toLowerCase().contains(bookName.toLowerCase())){
      searhedMovies.add(Movies[i]);
    }

  }
 return searhedMovies;
  }
}