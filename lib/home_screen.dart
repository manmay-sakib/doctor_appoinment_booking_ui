import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'doctors_sction.dart';

class HomeScreen extends StatelessWidget {
  List catNames = ['Dental', 'Heart', 'Eye', 'Brain', 'Ear'];
  List<Image> doctorsImage = [];
  List<Icon> catIcons = [
    Icon(
      MdiIcons.toothOutline,
      color: Color(0xFF0C84FF),
      size: 30,
    ),
    Icon(
      MdiIcons.heartPlus,
      color: Color(0xFF0C84FF),
      size: 30,
    ),
    Icon(
      MdiIcons.eye,
      color: Color(0xFF0C84FF),
      size: 30,
    ),
    Icon(
      MdiIcons.brain,
      color: Color(0xFF0C84FF),
      size: 30,
    ),
    Icon(
      MdiIcons.earHearing,
      color: Color(0xFF0C84FF),
      size: 30,
    ),
    Icon(
      MdiIcons.earHearing,
      color: Color(0xFF0C84FF),
      size: 30,
    ),
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFFD9E4EE),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF0C84FF).withOpacity(0.8),
                      Color(0xFF0C84FF),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.topLeft,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('images/doctor1.jpg'),
                              ),
                              Icon(
                                Icons.notifications_outlined,
                                size: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Hi, Programmers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Your Health is Our\n First Priority',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 2,
                          bottom: 20,
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search here...',
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: catNames.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 15,
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white70,
                                      //blurRadius: 1,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: catIcons[index],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                catNames[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Recomanded Doctors',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                    DoctorSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
