
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/core/utils/apiserves.dart';
import 'package:moviesapp/core/utils/app_routers.dart';
import 'package:moviesapp/features/home/data/rebo/homerebo.dart';
import 'package:moviesapp/features/home/presntation/manger/cubit/TrindingMovie/TrindingMovies_cubit.dart';
import 'package:moviesapp/features/home/presntation/manger/cubit/featerCubit/featur_Movie_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturMovieCubit(homerebo(Apiserves(Dio()))),
        ),
        BlocProvider(
          create: (context) => trindingmoviesCubit(homerebo(Apiserves(Dio()))),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: Color(0xff15141F)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
