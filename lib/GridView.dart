import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gridview_project/Premalu.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cinem4 U"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Languages",
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
//                      GridView.builder
//===========================================================================
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 0,
                            crossAxisCount: lang.length,
                            crossAxisSpacing: 20),
                        itemCount: lang.length,
                        itemBuilder: (context, index) {
                          return Container(
                              height: 30,
                              width: 100,
                              color: Colors.amberAccent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(lang[index]),
                                ],
                              ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
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
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 0,
                                  crossAxisCount: lang.length,
                                  crossAxisSpacing: 20),
                          children: [
                            Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [Text("Drama")])),
                            Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [Text("Adventure")])),
                            Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [Text("Comedy")])),
                            Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [Text("Romantic")])),
                            Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [Text("Thriller")])),
                            Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [Text("Sci-fic")])),
                            Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [Text("Horror")])),
                            Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [Text("Animation")])),
                            Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [Text("Historical Fiction")])),
                            Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [Text("Fantasy")]))
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Malayalam",
                style: TextStyle(fontSize: 28),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 500,
                child: GridView.extent(
                  maxCrossAxisExtent: 250,
                  mainAxisSpacing: 40,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Premalu(),
                              ));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "Images/Malayalm_Movies/premalu.jpg",
                              height: 170,
                            ),
                            Text("Premalu")
                          ],
                        )),
                    InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              "Images/Malayalm_Movies/manjummel-boys.jpg",
                              height: 170,
                            ),
                            Text("Manjummel Boys")
                          ],
                        )),
                    Column(
                      children: [
                        Image.asset(
                          "Images/Malayalm_Movies/thankaman.jpg",
                          height: 170,
                        ),
                        Text("Thankamani")
                      ],
                    )
                  ],
                ),
              )

              //Image.asset("Images/Malayalm_Movies/premalu.jpg")
            ],
          ),
        ),
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
List malMov = [
  "Images/Malayalm_Movies/manjummel-boys.jpg",
  "Images/Malayalm_Movies/premalu.jpg",
  "Images/Malayalm_Movies/thankaman.jpg"
];
