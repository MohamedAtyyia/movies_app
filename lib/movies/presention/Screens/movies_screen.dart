import 'package:app_movies/core/util/service_locator.dart';
import 'package:app_movies/movies/presention/Screens/widget/movies_screen_body.dart';
import 'package:app_movies/movies/presention/manager/playin_now_cubit/movies_cubit.dart';
import 'package:app_movies/movies/presention/manager/popular_cubit/popular_cubit.dart';
import 'package:app_movies/movies/presention/manager/to_rated_cubit/to_rated_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/home_repo_imple.dart';


class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PlayingNowMoviesCubit(getIt.get<Homerepoimple>())
            ..featchFeatcherNowPlayingMovies(),
        ),
        BlocProvider(
          create: (_) => PopularMoviesCubit(getIt.get<Homerepoimple>())
            ..featchFeatcherPopularMovies(),
        ),
        BlocProvider(
          create: (_) => TopRatedMoviesCubit(getIt.get<Homerepoimple>())
            ..featchFeatcherToRatedMovies(),
        ),
      ],
      child:const SafeArea(
        child: Scaffold(
          backgroundColor:  Color(0xff303030),
          body:MoviesScreenbody()
        
      ),
    ),);
  }
}
