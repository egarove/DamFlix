import 'package:fl_damflix/widgets/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          CardSwiper()
        ],
      )
    );
  }
}