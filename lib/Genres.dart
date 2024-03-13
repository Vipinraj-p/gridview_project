import 'package:flutter/material.dart';

class Genrespg extends StatefulWidget {
  const Genrespg({super.key});

  @override
  State<Genrespg> createState() => _GenrespgState();
}

class _GenrespgState extends State<Genrespg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Genres"),
            SizedBox(
              width: 20,
            ),
            Text(
              "GridView",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text(
            "Genres",
            style: TextStyle(fontSize: 28),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 2000,
                  height: 30,
//===========================================================================
//                      GridView
//===========================================================================
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 0,
                          crossAxisCount: lang.length,
                          crossAxisSpacing: 20),
                      children: [
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text("Drama")])),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text("Adventure")])),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text("Comedy")])),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Chrime",
                                  )
                                ])),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text("Romantic")])),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text("Thriller")])),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text("Sci-fic")])),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text("Horror")])),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text("Animation")])),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text("Historical Fiction")])),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text("Fantasy")]))
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List lang = [
  "Malayalam",
  "English",
  "Hindi",
  "Tamil",
  "Kannada",
  "Telugu",
  "Gujarati",
  "Bengali",
  "Punjabi",
  "Nepali",
  "Urdu",
];
