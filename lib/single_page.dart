import 'package:flutter/material.dart';
import 'package:smart_home_app_ui/home.dart';

class SinglePage extends StatefulWidget {
  const SinglePage({Key? key}) : super(key: key);

  @override
  State<SinglePage> createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {
  double _currentSliderValue = 24;
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
                  height: 350.0,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Column(
                          children: [
                            Text(
                              "24°",
                              style: TextStyle(
                                fontSize: 60.0,
                              ),
                            ),
                            Text(
                              "Temperature",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 24.0,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "16",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 360.0),
                                    child: Text(
                                      "16",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Slider(
                              value: _currentSliderValue,
                              max: 32,
                              min: 16,
                              divisions: 16,
                              activeColor: Colors.black,
                              inactiveColor: Colors.grey,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.all(16.0),
                                    primary: Colors.white,
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 44,
                                    width: 100,
                                    child: Text(
                                      "Automatic",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16)),
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.all(16.0),
                                    primary: Colors.white,
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 44,
                                    width: 100,
                                    child: Text(
                                      "Swing",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16)),
                                      color: Colors.black,
                                    ),
                                  ),
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
          Column(
            children: [
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
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Column(
                        children: [
                          Text(
                            "Smart Lamp",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Active for 5h"),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.offline_bolt,
                          size: 40.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.black,
                      child: const Icon(
                        Icons.tv,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Column(
                        children: [
                          Text(
                            "Smart Lamp",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Active for 5h"),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.offline_bolt,
                          size: 40.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.black,
                      child: const Icon(
                        Icons.speaker,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Column(
                        children: [
                          Text(
                            "HK Studio",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Offline"),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.offline_bolt,
                          size: 40.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.add_chart,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SinglePage(),
                  ),
                );
              },
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SinglePage(),
                  ),
                );
              },
            ),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.settings_display,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SinglePage(),
                  ),
                );
              },
            ),
            label: 'New',
          ),
        ],
      ),
    );
  }
}
