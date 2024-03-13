import 'package:flutter/material.dart';
import 'package:gridview_project/Premalu.dart';

class MalayalamMov extends StatefulWidget {
  const MalayalamMov({super.key});

  @override
  State<MalayalamMov> createState() => _MalayalamMovState();
}

class _MalayalamMovState extends State<MalayalamMov> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text("Malayalam", style: TextStyle(fontSize: 28)),
              SizedBox(
                width: 20,
              ),
              Text(
                "GridView.extend",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ],
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
          ),
        ],
      ),
    );
  }
}
