import 'package:flutter/material.dart';

class CastCarrousel extends StatelessWidget {
  const CastCarrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.white,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _CastCard();
        },
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 100,
      height: 150,
      color: Colors.white,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: FadeInImage(placeholder: AssetImage("assets/no-image-icon-6.png"), image: NetworkImage("https://media.vogue.fr/photos/61b9f2495cce35e9a7633b0f/2:3/w_2560%2Cc_limit/GettyImages-1357356956.jpg"), fit: BoxFit.cover, height: 200,),
          ),
          Text("actor.name Tom Holland", style: TextStyle(overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}