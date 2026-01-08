import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(), //queremos un appbar con tamaño personalizado
          SliverList(
            delegate: SliverChildListDelegate([
              //aqui ya podemos usar los widgets a los que estamos acostumbrado a usar
              //como Text
              _InfoPeli()
            ]),
          )
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

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
          child: Container(child: Text("Spiderman: Coming Home"), color: Colors.white38, width: double.infinity,)
        ),
        centerTitle: true,
        background: FadeInImage(
          placeholder: AssetImage("assets/no-image-icon-6.png"),
          image: NetworkImage('https://es.web.img2.acsta.net/pictures/17/06/19/14/01/130456.jpg'),
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}

class _InfoPeli extends StatelessWidget {
  const _InfoPeli({super.key});

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
                  placeholder: AssetImage('assets/no-image-icon-6.png'), 
                  image: NetworkImage("https://es.web.img2.acsta.net/pictures/17/06/19/14/01/130456.jpg"),
                  height: 250,
                ),
              ),
              Column(
                children: [
                  Text("Titulo: ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Text("Genero: ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Text("Año: ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),) 
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Text("Spider-Man: Homecoming (conocida como Spider-Man: De regreso a casa"+
                "en Hispanoamérica) es la primera película en solitario de Peter Parker en el Universo"+
                "Cinematográfico de Marvel (UCM), donde un joven Peter (Tom Holland) intenta equilibrar"+
                "su vida de estudiante con su rol de superhéroe, bajo la supervisión de Tony Stark,"+
                "mientras se enfrenta al villano El Buitre (Adrian Toomes, interpretado por Michael"+
                "Keaton) y aprende lo que realmente significa ser Spider-Man.",
                style: TextStyle(fontSize: 15),),
              ],
            ),
          )
        ],
      ),
    );
  }
}