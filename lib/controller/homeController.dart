import 'package:flutter/material.dart';
import 'package:rss_dtc/controller/feedController.dart';

class HomeController extends StatelessWidget {
  const HomeController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flux RSS",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: FeedController(),
    );
  }
}