import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/show_erro_mesaage.dart';
import '../../manager/playin_now_cubit/movies_cubit.dart';
import '../../manager/popular_cubit/popular_cubit.dart';
import '../../manager/to_rated_cubit/to_rated_cubit.dart';
import 'built_featcher.dart';
import 'buit_featcher_now_playing.dart';
import 'custom_text_info.dart';

class MoviesScreenbody extends StatelessWidget {
  const MoviesScreenbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         _buildFeatcherNowPlaying(),
          const SizedBox(height: 20),
          TextInfo(text: 'Popular', onTap: () {}),
          const SizedBox(height: 10),
          _buildFeatcherPopular(),
          const SizedBox(height: 20),
          TextInfo(text: 'Top Rated', onTap: () {}),
          _buildFeatcherTopRated(),
     //  const SizedBox(height: 20),
      
        ],
      ),
    );
  }

  BlocBuilder<PlayingNowMoviesCubit, PlayinNowMoviesState> _buildFeatcherNowPlaying() {
    return BlocBuilder<PlayingNowMoviesCubit, PlayinNowMoviesState>(
    builder: (context, state) {
      if (state is MoviesPlayingNowFailuer) {
        return ShowerroMessage(text: state.erroMessage);
      }else if(state is MoviesPlayingNowSuccfuly){
        return FeatchrNowPlaying(movies: state.moviesPlayingNow,controller: PageController(),);
      }
      return const Center(child: CircularProgressIndicator(),);

    },
  );
  }

  BlocBuilder<TopRatedMoviesCubit, ToRatedState> _buildFeatcherTopRated() {
    return BlocBuilder<TopRatedMoviesCubit, ToRatedState>(
          builder: (context, state) {
            if (state is MoviesTopRatedFailuer) {
              return ShowerroMessage(text: state.erroMessage);
            } else if (state is MoviesTopRatedSuccfuly) {
              return BuildFeatcher(
                movies: state.moviesTpRated,
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
  }

  BlocBuilder<PopularMoviesCubit, MoviesPopularState> _buildFeatcherPopular() {
    return BlocBuilder<PopularMoviesCubit, MoviesPopularState>(
      builder: (context, state) {
        if (state is MoviesPopularFailuer) {
          return ShowerroMessage(text: state.erroMessage);
        } else if (state is MoviesPopularSuccfuly) {
          return BuildFeatcher(
            movies: state.moviesPopular,
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
