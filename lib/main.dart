import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade100,
          centerTitle: true,
          title: Text(
            'Calculator',
            style: TextStyle(
              fontFamily: 'Coutgette',
              fontSize: 30.0,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(40.0),
                color: Colors.white,
                width: 300.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter values',

                    hintStyle: TextStyle(

                      fontSize: 30.0,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Column(

                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        //margin: EdgeInsets.,
                        color: Colors.white,
                        child: Icon(
                          CupertinoIcons.plus,
                          color: Colors.black,
                          size: 100.0,
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        child: Icon(
                          CupertinoIcons.minus,
                          color: Colors.black,
                          size: 100.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Colors.white,
                        child: Icon(
                          CupertinoIcons.multiply,
                          color: Colors.black,
                          size: 100.0,
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        child: Icon(
                          CupertinoIcons.divide,
                          color: Colors.black,
                          size: 100.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    margin:
                    EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                    color: Colors.yellow.shade600,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 55.0),
                      child: Icon(
                        CupertinoIcons.equal,
                        color: Colors.black,
                        size: 100.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}