import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier{

  String _apiKey = 'a68d44ce7d59d9f3c283182f4af07a16';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';


  MoviesProvider() {
    print('MoviesProvider ha sido inicializado');

    this.getOnDisplayMovies();

  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '/3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1'
    }   
    );
    var response = await http.get(url);

    print( response.body );
  }
}