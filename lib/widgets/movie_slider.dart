import "package:fl_damflix/models/popular_response.dart";
import "package:fl_damflix/providers/popular_movies_provider.dart";
import "package:flutter/material.dart";

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key, required this.movies});

final List<Result1> movies;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 235, 64, 51),
      width: double.infinity,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text('Peliculas Favoritas',style: TextStyle( fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return MoviePoster(movies, index);
              }),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}


class MoviePoster extends StatelessWidget {
  const MoviePoster(this.movies, this.index, {super.key});

    final List<Result1> movies;
    final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      color: const Color.fromARGB(255, 58, 123, 235),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: movies[index]),
            child: ClipRRect(
              /// borderRadius: BorderRadiusGeometry.circular(20), para redondear las imagenes
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image-icon-6.png'),
                image: NetworkImage(movies[index].fullPosterimg),
                height: 250,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            movies[index].title,
            overflow: TextOverflow.ellipsis, //pone el titulo en una linea con puntos suspensivos
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}