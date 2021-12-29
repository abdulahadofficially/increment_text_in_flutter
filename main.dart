import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          drawer: Drawer(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Press plus icon for increament",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "$a",
                  style: TextStyle(fontSize: 20),
                ),
                Column(
                  children: [
                    FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          a++;
                        });
                      },
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.restaurant_menu),
                      onPressed: () {
                        setState(() {
                          a = 0;
                        });
                      },
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.subtitles),
                      onPressed: () {
                        setState(() {
                          a--;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
