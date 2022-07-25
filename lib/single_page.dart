import 'package:flutter/material.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Air Conditioner",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          const Icon(
            Icons.settings,
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 450.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 16.0,
                              left: 24.0,
                            ),
                            child: CircleAvatar(
                              radius: 15.0,
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.air_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 16.0,
                              left: 120.0,
                            ),
                            child: Text("Air Conditionar"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 120.0,
                              top: 16.0,
                            ),
                            child: CircleAvatar(
                              radius: 15.0,
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.airplanemode_active,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("24 Degree"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.black,
                  child: const Icon(
                    Icons.lightbulb,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.lightbulb,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.lightbulb,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
