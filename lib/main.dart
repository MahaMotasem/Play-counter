import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAPoint = 0;

  int teamBPoint = 0;

  void teamAPoints() {
    print("add one point");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
            style: TextStyle(color: Colors.white),
          ),
        ),
        drawer: Drawer(
          child: ListTile(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 34, color: Colors.black),
                    ),
                    Text(
                      "$teamAPoint",
                      style: TextStyle(fontSize: 150, color: Colors.black),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoint++;
                        });
                        print(teamAPoint);
                      },
                      child: Text(
                        "Add 1 point",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                         teamAPoint += 2;
                        });
                        print(teamAPoint + 2);
                      },
                      child: Text(
                        "Add 2 point",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                        teamAPoint += 3;
                        });
                        print(teamAPoint + 3);
                      },
                      child: Text(
                        "Add 3 point",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                SizedBox(
                  height: 420,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 34, color: Colors.black),
                    ),
                    Text(
                      "$teamBPoint",
                      style: TextStyle(fontSize: 150, color: Colors.black),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoint++;
                        });
                       
                      },
                      child: Text(
                        "Add 1 point",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                           teamBPoint += 2;
                        });
                        
                      },
                      child: Text(
                        "Add 2 point",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoint += 3;
                        });
                        
                      },
                      child: Text(
                        "Add 3 point",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                setState(() {
                teamAPoint=0;
                teamBPoint=0;
              });},
              child: Text(
                "Reset",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                maximumSize: Size(150, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
