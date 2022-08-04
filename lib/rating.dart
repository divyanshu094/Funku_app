import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:funku/genre.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({ Key? key }) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Rating(),
    );
  }
}

class Rating extends StatefulWidget {
  const Rating({ Key? key }) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => MusicGenre()));
          },icon: const Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: Padding(padding: const EdgeInsets.only(left: 28,right: 28,top: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Rating", 
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                   text: 'Hey John, help your fellow party goers by rating CLUB NAME based on your experiance.',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                )
                )
            ],
          ),
        ),
      ),
    );
  }
}