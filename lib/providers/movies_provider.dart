import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier{

  String _apiKey = 'a68d44ce7d59d9f3c283182f4af07a16';
  String _baseUrl = 'api.thememoviedb.org';
  String _language = 'es-Es';


  MoviesProvider(){
    print("Movies Provider ha sido inicializado");
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    //obtenemos los datos a traves de la API
    var url = Uri.https(_baseUrl, '/3/movie/now_playing?language=es-ES&page=1', {
      'api_key': _apiKey,
      'language': _language,
      'page': 1
    });
    var response = await http.get(url);

    print(response.body);
  }
}