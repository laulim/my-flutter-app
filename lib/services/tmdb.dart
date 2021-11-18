import 'package:tmdb_api/tmdb_api.dart';

final tmdb = TMDB(ApiKeys('d66806600a4daf204fe1df1ba44881eb', 'apiReadAccessTokenv4'));

Future getPopular() async {
  final result = await tmdb.v3.movies.getPouplar();
  return result;
}

// Future getWatchList() async {
//   final result = await tmdb.v3.account.getMovieWatchList();
// }
