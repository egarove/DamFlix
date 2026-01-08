import "package:flutter/material.dart";

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
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
              itemCount: 10,
              itemBuilder: (context, index) {
                return MoviePoster();
              }),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}


class MoviePoster extends StatelessWidget {
  const MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      color: Colors.blueAccent,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              /// borderRadius: BorderRadiusGeometry.circular(20), para redondear las imagenes
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image-icon-6.png'),
                image: NetworkImage('https://es.web.img2.acsta.net/pictures/17/06/19/14/01/130456.jpg'),
                height: 250,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Spiderman: Home Coming",
            overflow: TextOverflow.ellipsis, //pone el titulo en una linea con puntos suspensivos
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}