import 'package:app_movies/core/util/show_erro_mesaage.dart';
import 'package:app_movies/movies/data/model/movies.dart';
import 'package:app_movies/movies/presention/Screens/widget/show_dateails.dart';
import 'package:app_movies/movies/presention/manager/similermovies/cubit/similer_movies_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'freatcher_similer.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key, required this.movies});
  final Movies movies;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:  ShowMoviesDetails(movies: movies) 
        ),
        SliverFillRemaining(
          child: BlocBuilder<SimilerMoviesCubit, SimilerMoviesState>(
            builder: (context, state) {
              if (state is SimilerMoviesFailuer) {
                return ShowerroMessage(text: state.erroMessage);
              } else if (state is SimilerMoviesSuccfuly) {
                return FeatcherSimilerMovies(movies: state.similerMovies);
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        )
      ],
    );

  }
}
