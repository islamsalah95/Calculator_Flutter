import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({super.key});

  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  num _num1 = 0;
  num _num2 = 0;
  num _result = 0;

  void _addition() {
    setState(() {
      _result = _num1 + _num2;
    });
  }

  void _subtraction() {
    setState(() {
      _result = _num1 - _num2;
    });
  }

  void _multiplication() {
    setState(() {
      _result = _num1 * _num2;
    });
  }

  void _exponentiation() {
    setState(() {
      _result = pow(_num1, _num2);
    });
  }

  void _division() {
    setState(() {
      _result = _num1 / _num2;
    });
  }

  void _modulus() {
    setState(() {
      _result = _num1 % _num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              color: Colors.black,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.green,
                        width: 10,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text(
                                "$_num1",
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 24),
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text(
                                '$_num2',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 24),
                              ),
                            ),
                          ),
                          const Text(
                            '=',
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text(
                                '$_result',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 24),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                      width: double.infinity,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Center(
                                child: Column(
                                  children: [
                                    const Text('The First Number',
                                        style: TextStyle(color: Colors.white)),
                                    Row(children: [
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape
                                              .circle, // Make the padding circular
                                          color: Colors
                                              .white, // Set the padding color to white
                                        ),
                                        // Set the padding color to white
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              _num1++;
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            foregroundColor: Colors
                                                .green, // Set the foreground color to white
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Icon(Icons.add),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape
                                              .circle, // Make the padding circular
                                          color: Colors
                                              .white, // Set the padding color to white
                                        ),
                                        // Set the padding color to white
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              _num1--;
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            foregroundColor: Colors
                                                .green, // Set the foreground color to white
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Icon(Icons.remove),
                                        ),
                                      ),
                                    ])
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Column(
                                  children: [
                                    const Text('The Second Number',
                                        style: TextStyle(color: Colors.white)),
                                    Row(children: [
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape
                                              .circle, // Make the padding circular
                                          color: Colors
                                              .white, // Set the padding color to white
                                        ),
                                        // Set the padding color to white
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {});
                                            _num2++;
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            foregroundColor: Colors
                                                .green, // Set the foreground color to white
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Icon(Icons.add),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape
                                              .circle, // Make the padding circular
                                          color: Colors
                                              .white, // Set the padding color to white
                                        ),
                                        // Set the padding color to white
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              _num2--;
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            foregroundColor: Colors
                                                .green, // Set the foreground color to white
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Icon(Icons.remove),
                                        ),
                                      ),
                                    ])
                                  ],
                                ),
                              ),
                            )
                          ])),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              _addition();
                            },
                            child: const Text('+ Addition'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _subtraction();
                            },
                            child: const Text('- Subtraction'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              _multiplication();
                            },
                            child: const Text('* Multiplication'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _division();
                            },
                            child: const Text('/ Division'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              _exponentiation();
                            },
                            child: const Text('^ Exponentiation'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _modulus();
                            },
                            child: const Text('% Modulus'),
                          ),
                        ],
                      )
                    ],
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _num1 =_num2 =_result = 0;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Image.network(
                            "https://i0.wp.com/images.squarespace-cdn.com/content/v1/5ff36df450339566e9be4034/1611603249028-K1TG0X50TD49Q5U5YISK/ezgif-5-486e88066809.gif?ssl=1"),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
