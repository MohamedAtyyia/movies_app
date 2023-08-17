part of 'movies_cubit.dart';

abstract class PlayinNowMoviesState extends Equatable {
  const PlayinNowMoviesState();

  @override
  List<Object> get props => [];
}

class MoviesInitial extends PlayinNowMoviesState {}
class MoviesPlayingNowFailuer extends PlayinNowMoviesState {
  final String erroMessage;

  const MoviesPlayingNowFailuer(this.erroMessage);
}

class MoviesPlayingNowLoading extends PlayinNowMoviesState {}

class MoviesPlayingNowSuccfuly extends PlayinNowMoviesState {
  final List<Movies> moviesPlayingNow;

  const MoviesPlayingNowSuccfuly(this.moviesPlayingNow);
}
