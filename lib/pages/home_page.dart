import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
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
                        '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
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
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', buttonNumber: 1);
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
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', buttonNumber: 2);
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
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', buttonNumber: 3);
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
                        '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
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
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', buttonNumber: 1);
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
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', buttonNumber: 2);
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
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', buttonNumber: 3);
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
                    BlocProvider.of<CounterCubit>(context).resetPoints();
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }
}
