import 'package:flutter/material.dart';

class Premalu extends StatefulWidget {
  const Premalu({super.key});

  @override
  State<Premalu> createState() => _PremaluState();
}

class _PremaluState extends State<Premalu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Premalu"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              height: 250,
              color: Colors.black38,
              child: Row(
                children: [
                  Image.asset("Images/Malayalm_Movies/premalu.jpg"),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              "Premalu",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.red[300],
                                ),
                                Text(
                                  "9.2/10",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            SizedBox(height: 80),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Book Tickets"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red[300],
                                  foregroundColor: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 50),
            child: Text(
              "Cast",
              style: TextStyle(fontSize: 28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              //top: 350,
              left: 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 300,
                    width: 400,
                    child: GridView.custom(
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 100,
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 30),
                        childrenDelegate: SliverChildBuilderDelegate(
                            childCount: cast.length,
                            (context, index) => Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(cast[index]),
                                      radius: 40,
                                    ),
                                    Text(names[index])
                                  ],
                                ))),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

List cast = [
  "Images/Malayalm_Movies/Premalu_Actors/akhila-bhargavan.jpg",
  "Images/Malayalm_Movies/Premalu_Actors/althaf-salim.jpg",
  "Images/Malayalm_Movies/Premalu_Actors/mamitha-baiju.jpg",
  "Images/Malayalm_Movies/Premalu_Actors/meenakshi-raveendran.jpg",
  "Images/Malayalm_Movies/Premalu_Actors/naslen.jpg",
  "Images/Malayalm_Movies/Premalu_Actors/sangeeth-prathap.jpg",
  "Images/Malayalm_Movies/Premalu_Actors/shyam-mohan-mohan.jpg",
];
List names = [
  "Akhila Bhargavan",
  "Althaf Salim",
  "Mamitha Baiju",
  "Meenakshi",
  "Naslen",
  "Sangeeth Prathap",
  "Shyam Mohan"
];
