import 'package:app_movies/movies/data/model/movies.dart';
import 'package:flutter/material.dart';

import '../../../../core/util/app_constant.dart';


class FeatcherSimilerMovies extends StatelessWidget {
  const FeatcherSimilerMovies({
    super.key,
    required this.movies,
  });
  final List<Movies> movies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          childAspectRatio: 3 / 4),
      itemCount: movies.length,
    //  shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            movies[index].posterPath != null
                ? '${AppConstant.basurlimage}${movies[index].posterPath}'
                :AppConstant.erroimage,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
