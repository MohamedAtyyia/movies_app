import 'package:app_movies/movies/data/model/movies.dart';
import 'package:flutter/material.dart';

import '../../../../core/util/app_constant.dart';

class SimilerScreenbody extends StatelessWidget {
  const SimilerScreenbody({super.key, required this.movies});
  final List<Movies> movies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: movies.length,
        itemBuilder: (context, index) => _itemlistview(movies[index], context));
  }

  Widget _itemlistview(Movies movies, BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      height: 180,
      decoration: BoxDecoration(
          color: const Color(0xff303030),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
         
          AspectRatio(
            aspectRatio: 2 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                '${AppConstant.basurlimage}${movies.posterPath}',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  movies.title.toString(),
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
               const SizedBox(
                  height: 7,
                ) ,
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        movies.releaseDate.toString().substring(0, 4),
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.star,
                      size: 24,
                      color: Colors.yellow,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      movies.voteAverage.toString(),
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
                const SizedBox(
                  height:15,
                ) ,
                Expanded(
                  child: Text(
                    movies.overview.toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
