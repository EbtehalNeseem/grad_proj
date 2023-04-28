// ignore_for_file: prefer_const_constructors, camel_case_types, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';

final _Controller = TextEditingController();

class LivePage extends StatelessWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //making bar for the app name and style it
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.purple[400],
        title: Text(
          'ترجمة فورية ',
          style: TextStyle(
              fontFamily: 'amiri', fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      //the body of the app, using padding to leave a space around the body
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: Icon(
                    Icons.camera_alt,
                    size: 100,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _Controller,
              decoration: InputDecoration(
                  labelText: ' الترجمة',
                  labelStyle: TextStyle(fontFamily: "amiri")),
            ),
            SizedBox(height: 30),
            //to display the buttons in a row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[400]),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    )),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                  ),
                  child: Icon(
                    Icons.save_rounded,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[400]),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    )),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                  ),
                  child: Icon(
                    Icons.volume_up,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[400]),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    )),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                  ),
                  child: Icon(
                    Icons.flip_camera_ios_rounded,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
