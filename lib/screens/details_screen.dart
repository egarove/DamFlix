import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar() //queremos un appbar con tamaño personalizado
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
      expandedHeight: 200, 
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