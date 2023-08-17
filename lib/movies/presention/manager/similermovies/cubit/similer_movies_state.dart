part of 'similer_movies_cubit.dart';

abstract class SimilerMoviesState extends Equatable {
  const SimilerMoviesState();

  @override
  List<Object> get props => [];
}

class SimilerMoviesInitial extends SimilerMoviesState {}
class SimilerMoviesLoading extends SimilerMoviesState {}
class SimilerMoviesFailuer extends SimilerMoviesState {
  final String erroMessage;

 const  SimilerMoviesFailuer(this.erroMessage);

}
class SimilerMoviesSuccfuly extends SimilerMoviesState {
  final List<Movies> similerMovies;

 const  SimilerMoviesSuccfuly(this.similerMovies);

}
