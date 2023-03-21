import 'package:flutter/material.dart';

class AppointScreen extends StatelessWidget {
  const AppointScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFD9E4EE),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/doctor1.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF0C84FF).withOpacity(0.7),
                      Color(0xFF0C84FF).withOpacity(0),
                      Color(0xFF0C84FF).withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2F8FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFD9E4EE),
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Color(0xFF0C84FF),
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xFFF2F8FF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFD9E4EE),
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite_outlined,
                                color: Color(0xFF0C84FF),
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Patients',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '1.8k',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Experience',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '10 yr',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ratings',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '4.9',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr Looney',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                      color: Color(0xFF0C84FF),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.monitor_heart_outlined,
                        color: Colors.red,
                        size: 28,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Surgeon",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and "
                    "typesetting industry. Lorem Ipsum has been the "
                    "industry's standard dummy text ever since the "
                    "1500s, when an unknown printer took a galley "
                    "of type and scrambled it to make a type specimen book.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Book Date",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 70,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              //margin nicchey na kno?
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 30),
                              decoration: BoxDecoration(
                                color: index == 1
                                    ? Color(0xFF0C84FF)
                                    : Color(0xFFF2F8FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFD9E4EE),
                                    //blurRadius: 2,
                                    //spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${index + 8}",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: index == 1
                                          ? Colors.white
                                          : Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                  Text(
                                    "Dec",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: index == 1
                                          ? Colors.white
                                          : Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Book Time",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          decoration: BoxDecoration(
                            color: index == 2
                                ? Color(0xFF0C84FF)
                                : Color(0xFFF2F8FF),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFD9E4EE),
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "${index + 8} : 00 AM",
                              style: TextStyle(
                                fontSize: 17,
                                color: index == 2
                                    ? Colors.white
                                    : Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
