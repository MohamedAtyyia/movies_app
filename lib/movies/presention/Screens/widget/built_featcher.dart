import 'package:app_movies/core/util/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../core/util/app_constant.dart';
import '../../../data/model/movies.dart';


class BuildFeatcher extends StatelessWidget {
  const BuildFeatcher({
    super.key,
    required this.movies,
  });
  final List<Movies> movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
          itemCount: movies.length,
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRouter.detailsScreen,
                    arguments: movies[index]);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: _itemListview(movies[index]),
              ),
            );
          }),
    );
  }

  Widget _itemListview(Movies movies) {
    return AspectRatio(
      aspectRatio: 2.9 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          '${AppConstant.basurlimage}${movies.posterPath}',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
