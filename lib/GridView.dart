import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gridview_project/Genres.dart';
import 'package:gridview_project/Malayalam.dart';

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
              Row(
                children: [
                  Text(
                    "Languages",
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "GridView.builder",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
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
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MalayalamMov()));
                            },
                            child: Container(
                                height: 30,
                                width: 100,
                                color: Colors.amberAccent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(lang[index]),
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Genrespg(),
                        ));
                  },
                  child: Text("Genres")),
              SizedBox(
                height: 40,
              ),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MalayalamMov(),
                        ));
                  },
                  child: Text("Malayalam"))
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
