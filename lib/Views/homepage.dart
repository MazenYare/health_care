import 'dart:math';
import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:health_care/Views/Secondpage.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _randomNumber = 0;
  void unNormal() {
    setState(() {
      int next(int min, int max) => min + _random.nextInt(max - min);

      _randomNumber = next(147, 153);
    });
  }

  final Random _random = Random();
  void get() {
    setState(() {
      int next(int min, int max) => min + _random.nextInt(max - min);

      _randomNumber = next(100, 104);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          color: Colors.black),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hay!',
                          style: TextStyle(
                            color: Color(0xFF6E6B6B),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'How its Going?',
                          style: TextStyle(
                            color: Color(0xFF6E6B6B),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    const EasyContainer(
                      width: 60,
                      height: 70,
                      borderRadius: 26,
                      color: Color(0xFF1D2B2E),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Aya Mostafa Ramadan',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 2,
                ),
                EasyContainer(
                  borderRadius: 38,
                  color: const Color.fromARGB(255, 206, 255, 219),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: EasyContainer(
                                onTap: () {},
                                highlightColor: const Color(0xFF7AE185),
                                hoverColor: const Color(0xFF7AE185),
                                height: 65,
                                alignment: Alignment.center,
                                borderRadius: 30,
                                color: Colors.white,
                                child: const Text(
                                  'Doctors To Alert',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ),
                            ),
                            const Stack(
                              children: [
                                EasyContainer(
                                  height: 60,
                                  width: 105,
                                  alignment: Alignment.center,
                                  borderRadius: 30,
                                  color: Colors.white,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'edit',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 10,
                                  child: EasyContainer(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                    borderRadius: 30,
                                    color: Color.fromARGB(255, 206, 255, 219),
                                    child: Icon(IconlyBold.edit,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: EasyContainer(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailPage()),
                                  );
                                },
                                alignment: Alignment.center,
                                borderRadius: 40,
                                color: Colors.white,
                                child: const Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Dr.Magdy yacob',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Heart Surgon',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 110,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: EasyContainer(
                                    onTap: () {
                                      get();
                                    },
                                    alignment: Alignment.center,
                                    borderRadius: 38,
                                    color: Colors.white,
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 30, 0, 30),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'oxygen level',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '99%',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 40),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Expanded(
                                  child: EasyContainer(
                                    onTap: () {
                                      unNormal();
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Text('Look out!'),
                                            content: const Text(
                                                'The Heart Rate is going Low You Must Take Your breathe!'),
                                            actions: <Widget>[
                                              TextButton(
                                                child: const Text('ok'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    alignment: Alignment.center,
                                    borderRadius: 38,
                                    color: const Color(0xFF7AE185),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 30, 0, 30),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Blood Type',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'AB+',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 40),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: EasyContainer(
                          color: Colors.white,
                          borderRadius: 38,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        60, 20, 10, 0),
                                    child: Column(
                                      children: [
                                        const Text(
                                          'Heart Rate',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              40, 0, 0, 0),
                                          child: Text(
                                            '$_randomNumber',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 100),
                                          ),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(150, 0, 0, 0),
                                          child: Text(
                                            'Bpm',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
