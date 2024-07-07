import 'package:flutter/material.dart';

void main() {
  runApp(PointCounter());
}

class PointCounter extends StatefulWidget {
  PointCounter({super.key});

  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text('Team A', style: TextStyle(fontSize: 35),),
                    Text('$teamAPoints', style: const TextStyle(fontSize: 200),),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        minimumSize: const Size(100, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamAPoints = teamAPoints + 1;
                        });
                      },
                      child: const Text(' Add 1 Point', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        minimumSize: const Size(100, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamAPoints = teamAPoints + 2;
                        });
                      },
                      child: const Text(' Add 2 Point', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        minimumSize: const Size(100, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamAPoints = teamAPoints + 3;
                        });
                      },
                      child: const Text(' Add 3 Point', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    const Text('Team B', style: TextStyle(fontSize: 35),),
                    Text('$teamBPoints', style: const TextStyle(fontSize: 200),),
                    const SizedBox(height: 10),
                    // ElevatedButton(
                    //   style: ButtonStyle(
                    //     backgroundColor: MaterialStateProperty.all(Colors.orange),
                    //   ),
                    //   onPressed: (){},
                    //   child: const Text(' Add 1 Point'),
                    // ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        minimumSize: const Size(100, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamBPoints = teamBPoints + 1;
                        });
                      },
                      child: const Text(' Add 1 Point', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        minimumSize: const Size(100, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamBPoints = teamBPoints + 2;
                        });
                      },
                      child: const Text(' Add 2 Point', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        minimumSize: const Size(100, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamBPoints = teamBPoints + 3;
                        });
                      },
                      child: const Text(' Add 3 Point', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                minimumSize: const Size(200, 50),
              ),
              onPressed: (){
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text('Reset', style: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
