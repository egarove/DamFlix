import 'package:fl_damflix/models/models.dart';
import 'package:fl_damflix/providers/cast_provider.dart';
import 'package:fl_damflix/widgets/cast_carrousel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dynamic movie = ModalRoute.of(context)!.settings.arguments as dynamic ;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CastProvider(movie.id), lazy: false,),
      ],
      child: Scaffold(
        body: CustomScrollView(
        slivers: [
          _CustomAppBar(movie: movie), //queremos un appbar con tamaño personalizado
          SliverList(
            delegate: SliverChildListDelegate([
              //aqui ya podemos usar los widgets a los que estamos acostumbrado a usar
              //como Text
              _InfoPeli(movie: movie),
              _Overview(movie: movie),
              CastCarrousel(),
              SizedBox(height: 45,)
            ]),
          )
        ],
      )
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {

  final dynamic movie;

  const _CustomAppBar({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {


    return SliverAppBar(
      expandedHeight: 450, 
      floating: false,
      pinned: true,
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          child: Container(child: Text(movie.title), color: Colors.white38, width: double.infinity,)
        ),
        centerTitle: true,
        background: FadeInImage(
          placeholder: AssetImage("assets/no-image-icon-6.png"),
          image: NetworkImage(movie.fullPosterimg),
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}

class _InfoPeli extends StatelessWidget {

final dynamic movie;


  const _InfoPeli({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage(movie.fullPosterimg), 
                  image: NetworkImage("https://es.web.img2.acsta.net/pictures/17/06/19/14/01/130456.jpg"),
                  height: 250,
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title,style: Theme.of(context).textTheme.headlineMedium, overflow: TextOverflow.ellipsis, maxLines: 2,),
                  Text(movie.releaseDate.toString(),style: Theme.of(context).textTheme.headlineMedium, overflow: TextOverflow.ellipsis, maxLines: 1,),
                  Row(
                    children: [
                      Icon(Icons.star_half, size: 30, color: Colors.amber,),
                      Text(movie.voteAverage.toString(),style: Theme.of(context).textTheme.headlineMedium, overflow: TextOverflow.ellipsis, maxLines: 1,),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 10,),        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {

  final dynamic movie;

  const _Overview({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: 
        Text(movie.overview,
        textAlign: TextAlign.justify,
        ),
    );
  }
}