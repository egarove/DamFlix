import 'package:fl_damflix/providers/movies_provider.dart';
import 'package:fl_damflix/providers/popular_movies_provider.dart';
import 'package:fl_damflix/widgets/card_swiper.dart';
import 'package:fl_damflix/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);
    final popularProvider = Provider.of<PopularMoviesProvider>(context);


    return Scaffold(
      appBar: AppBar(
        title: Text("DAMFlix"),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon (Icons.search_off_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(movies: moviesProvider.onDisplayMovies,),
            MovieSlider(movies: popularProvider.popularMovies)
          ],
        ),
      )
    );
  }
}