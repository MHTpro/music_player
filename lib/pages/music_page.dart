import 'dart:ui';

import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900.withOpacity(0.2),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        actions: const <Widget>[
          Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 30.0,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueGrey.shade900.withOpacity(0.2),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 300.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  "Motivation",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                      size: 60.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    ClipOval(
                      child: Container(
                        height: 80.0,
                        width: 80.0,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.blue,
                              Colors.red,
                            ],
                          ),
                        ),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 60.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Icon(
                      Icons.skip_next,
                      color: Colors.white,
                      size: 60.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "2:25",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          "10:00",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Container(
                          height: 10.0,
                          width: 420.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 10.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: const LinearGradient(
                              colors: <Color>[
                                Colors.red,
                                Colors.blue,
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 90.0,
                          bottom: -5.0,
                          child: ClipOval(
                            child: Container(
                              height: 20.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: const LinearGradient(
                                  colors: <Color>[
                                    Colors.blue,
                                    Colors.red,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Read",
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Motivation is the driving dorce that\nPushes individuals to achive their\nGoals and excel in life.",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.black,
        height: 80.0,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              Icons.home,
              color: Colors.greenAccent,
              size: 30.0,
            ),
            Icon(
              Icons.favorite,
              color: Colors.greenAccent,
              size: 30.0,
            ),
            Icon(
              Icons.settings,
              color: Colors.greenAccent,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
