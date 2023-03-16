import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0C84FF).withOpacity(0.8),
              Color(0xFF0C84FF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: (Image.asset('images/doctors.png')),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Doctors Online',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Appoint Your Doctor',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            /*ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: Size(15, 40),
                ),
                onPressed: () {},
                child: Text(
                  "Let's Go",
                  style: TextStyle(
                    color: Color(0xFF0C84FF),
                    fontWeight: FontWeight.bold,
                  ),
                ))*/
            Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text(
                    "Let's Go",
                    style: TextStyle(
                      color: Color(0xFF0C84FF),
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Image.asset(
              'images/lined heart.png',
              color: Colors.white,
              scale: 2,
            ),
          ],
        ),
      ),
    );
  }
}

/*
style: ElevatedButton.styleFrom(
                   backgroundColor: const Color(0xff49c09a),
                   elevation: 0,
                   shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8),
                   ),
                   minimumSize: const Size(double.infinity, 48),*/
