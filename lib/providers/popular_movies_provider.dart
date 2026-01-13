import 'package:fl_damflix/models/popular_response.dart' show PopularResponse, Result1;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PopularMoviesProvider extends ChangeNotifier {
  String _apiKey = 'a68d44ce7d59d9f3c283182f4af07a16';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Result1> popularMovies = [];


  MoviesProvider() {
    print('MoviesProvider ha sido inicializado');

    this.getPopularMovies();

  }

  getPopularMovies() async {
    var url = Uri.https(_baseUrl, '/3/movie/popular', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1'
    }   
    );
    var response = await http.get(url);

    //final Map<String, dynamic> decodeData = json.decode(response.body);
    final popularResponse = PopularResponse.fromJson(response.body);


    print( popularResponse.results[0].title);
    popularMovies = popularResponse.results;
  }
}