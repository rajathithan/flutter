import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/raj.jpg'),
              ),
              Text(
                'Rajathithan Rajasekar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    fontFamily: 'sans pro regular',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                    color: Colors.teal[100]),
              ),
              Divider(
                color: Colors.teal.shade700,
                endIndent: 100.0,
                height: 40.0,
                indent: 100.0,
                thickness: 2.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+91-8220323555',
                    style: TextStyle(
                      fontFamily: 'san pro regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.teal[900],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'rajathithan@gmail.com',
                    style: TextStyle(
                      fontFamily: 'sanproregular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.teal[900],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
