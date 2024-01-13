import 'dart:math';
import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.teal,
        appBar: AppBar(
          shadowColor:Theme.of(context).primaryColor,
          // backgroundColor: Colors.teal,
          title: Center(child: Text('flutter demo')),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: AssetImage('images/kll.png'),
                  radius: 50.0,
                ),
                const Text(
                  'kaleab bayih',
                  style: TextStyle(
                    fontFamily: 'Akronim',
                    fontSize: 40.0,
                    // color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'am flutter trainer',
                  style: TextStyle(
                    letterSpacing: 2,
                    // color: Colors.teal.shade100,
                    fontSize: 20,
                  ),
                ),
                const Card(
                  // color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      // color: Colors.black,
                    ),
                    title: Text(
                      '+251922555731',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const Card(
                  // color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      // color: Colors.black,
                    ),
                    title: Text(
                      'kaleabbyh@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Card(
                  // color: Colors.black26,
                  child: TextButton(onPressed: () {
                    setState(() {
                      int a=Random().nextInt(6)+1;
                      print('a is increased to :$a');
                    });
                  },
                    child: const Text(
                      'click',
                      style: TextStyle(
                        // color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

