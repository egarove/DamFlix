import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier{
  MoviesProvider(){
    print("Movies Provider ha sido inicializado");
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print("Getting on display movies");
  }
}