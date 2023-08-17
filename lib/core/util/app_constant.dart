class AppConstant {
  static const String erroimage = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQrWwjftDtZaWSEWugJZA-TInN9_GvdSitFOUKgEw&s';
  static const String basurl = 'https://api.themoviedb.org/3/';
  static const String apikey = '8692f51c8a829e53b1573af6db2e292a';
  static const String urlTopRated = '${basurl}movie/top_rated?api_key=$apikey';
  static const String urlPopular = '${basurl}movie/popular?api_key=$apikey';
  static const String urlNowPlaying =
      '${basurl}movie/now_playing?api_key=$apikey';
    static const String basurlimage = 'https://image.tmdb.org/t/p/w500';
  static const String urlSimilarPopular = '${basurl}movie/385687/similar?api_key=${apikey}';
    static const String urlSimilarTopRated = '${basurl}movie/278/similar?api_key=${apikey}';


}

