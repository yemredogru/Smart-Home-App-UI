import 'package:flutter/material.dart';
import 'package:smart_home_app_ui/home.dart';

void main() {
  runApp(const MyApp());
}

//https://dribbble.com/shots/18855331-Smart-Home-App-UI
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/images/smart.jpg',
                      height: MediaQuery.of(context).size.height * 0.50,
                      width: MediaQuery.of(context).size.width * 1,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Easy Control',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  ),
                  const Text(
                    'Your Home',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  const Text(
                    'Manage your home from',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const Text(
                    'anytime, anywhere.',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  const Text(
                    'Press your finger to open',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: Colors.black,
                        ),
                      )),
                    ),
                    child: const Icon(
                      Icons.fingerprint,
                      color: Colors.black,
                      size: 40.0,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
