import 'package:card_swiper/card_swiper.dart';
import 'package:fl_damflix/models/models.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key, required this.movies});


  final List<Result> movies;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height*0.5,
      color: const Color.fromARGB(255, 236, 143, 2),
      padding: const EdgeInsets.all(25),
      child: Swiper(
        itemCount: movies.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width*0.6,
        itemHeight: size.height*0.9,
        itemBuilder: (context, index) {

          final movie = movies[index];
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image-icon-6.png'),
                image: NetworkImage(movie.fullPosterimg),
                fit: BoxFit.cover,
              )
            ),
          );
        }
      ),
    );
  }
}