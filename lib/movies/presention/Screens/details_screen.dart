import 'package:app_movies/core/util/app_constant.dart';
import 'package:app_movies/core/util/service_locator.dart';
import 'package:app_movies/movies/presention/Screens/widget/details_screen_body.dart';
import 'package:app_movies/movies/presention/manager/similermovies/cubit/similer_movies_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/movies.dart';
import '../../data/repo/home_repo_imple.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.movies}) : super(key: key);
  final Movies movies;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilerMoviesCubit(getIt.get<Homerepoimple>())
        ..featchFeatcherSimilerMovies(url:'${AppConstant.basurl}/movie/${movies.id}/similar?api_key=${AppConstant.apikey}'),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff1E1E29),
          body: Builder(
            builder: (BuildContext context) {
              return DetailsScreenBody(movies: movies);
            },
          ),
        ),
      ),
    );
  }
}
