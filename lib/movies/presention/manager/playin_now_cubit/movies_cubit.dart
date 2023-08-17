import 'package:app_movies/core/util/app_constant.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/movies.dart';
import '../../../data/repo/home_repo_imple.dart';

part 'movies_state.dart';

class PlayingNowMoviesCubit extends Cubit<PlayinNowMoviesState> {
  PlayingNowMoviesCubit(this._homerepoimple) : super(MoviesInitial());
  final Homerepoimple _homerepoimple;

  Future<void> featchFeatcherNowPlayingMovies() async {
    emit(MoviesPlayingNowLoading());

    var results =
        await _homerepoimple.featchMovies(url: AppConstant.urlNowPlaying);
    results.fold((l) {
      emit(MoviesPlayingNowFailuer(l.erroMessage));
    }, (r) {
      emit(MoviesPlayingNowSuccfuly(r));
    });
  }
}
