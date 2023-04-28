// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //to determine the width and height of an mobile
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    //using the safe area to make the app in the area away from the status bar of the mobile
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        //making bar for the app name and style it
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.purple[400],
          title: Text(
            'ARabic Sign Language Translator App',
            style: TextStyle(
                fontFamily: 'julee', fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        //the body of the app, using a box to assign the width , height
        body: SizedBox(
          width: w,
          height: h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //display the logo
              Image.asset("assets/Images/logo 3.png"),
              SizedBox(
                height: 150,
              ),
              //display buttons with space between them
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/livepage');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[400]),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 10,
                  )),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80))),
                ),
                child: Text(
                  "ترجمة فورية",
                  style: TextStyle(
                      fontFamily: 'amiri',
                      fontSize: 25,
                      color: Colors.grey[100]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/instantpage');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[100]),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                    horizontal: 75,
                    vertical: 10,
                  )),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80))),
                ),
                child: Text(
                  "ترجمة صورة",
                  style: TextStyle(
                      fontFamily: 'amiri', fontSize: 25, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
