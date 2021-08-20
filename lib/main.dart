import 'dart:html';

import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      //appBar: AppBar(
      //title: Text("Login Page"),
      //),
      body: SingleChildScrollView(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 100,
          ),
          elevation: 5,
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 17, 12, 171),
                backgroundImage: AssetImage('asset/images/login.png'),
                radius: 50,
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Password is empty'),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              TextButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Color.fromARGB(255, 17, 12, 171),
                    fontSize: 15,
                    fontFamily: 'Muli',
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 12, 171),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Muli',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New User? ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 12, 171),
                      fontSize: 14,
                      fontFamily: 'Muli',
                    ),
                  ),
                  Text(
                    'Create Account',
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 12, 171),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Muli',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
