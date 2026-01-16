import 'dart:convert';
import 'package:fl_damflix/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CastProvider extends ChangeNotifier{

  String _apiKey = 'a68d44ce7d59d9f3c283182f4af07a16';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Cast> castingList = [];


  CastProvider(int movie_id) {

    this.getCast(movie_id);

  }

  getCast(int movie_id) async {
    var url = Uri.https(_baseUrl, '/3/movie/${movie_id}/credits', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1'
    }   
    );
    var response = await http.get(url);

    //final Map<String, dynamic> decodeData = json.decode(response.body);
    final creditsresponse = CreditsResponse.fromJson(response.body);


    print( creditsresponse.cast[0]);
    castingList = creditsresponse.cast;
  }
}