part of 'popular_cubit.dart';

abstract class MoviesPopularState extends Equatable {
  const MoviesPopularState();

  @override
  List<Object> get props => [];
}

class PopularInitial extends MoviesPopularState {}

class MoviesPopularFailuer extends MoviesPopularState {
  final String erroMessage;

  const MoviesPopularFailuer(this.erroMessage);
}

class MoviesPopularLoading extends MoviesPopularState {}

class MoviesPopularSuccfuly extends MoviesPopularState {
  final List<Movies> moviesPopular;

  const MoviesPopularSuccfuly(this.moviesPopular);
}
