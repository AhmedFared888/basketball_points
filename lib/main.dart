import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoint = 0;

  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                    Text(
                      '$teamAPoint',
                      style: const TextStyle(
                        fontSize: 150.0,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(140, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoint++;
                          });
                          print(teamAPoint);
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(140, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoint += 2;
                          });
                          print(teamAPoint);
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(140, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoint += 3;
                          });
                          print(teamAPoint);
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 300, // Custom height to match the column
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    width: 20, // Space around the divider
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                    Text(
                      '$teamBPoint',
                      style: const TextStyle(
                        fontSize: 150.0,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(140, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoint++;
                          });
                          print(teamBPoint);
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(140, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoint += 2;
                          });
                          print(teamBPoint);
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(140, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoint += 3;
                          });
                          print(teamBPoint);
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(100, 40),
                ),
                onPressed: () {
                  setState(() {});
                  teamAPoint = 0;
                  teamBPoint = 0;
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
