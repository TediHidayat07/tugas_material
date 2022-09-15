import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'No Internet Access',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(1000, 255, 127, 62),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'Show Menu',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a Menu')));
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 175,
                  ),
                  Image.asset(
                    'images/antenna.png',
                    width: 170,
                    height: 170,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Ooops!',
                    style: TextStyle(
                        fontSize: 28, fontFamily: 'MontserratSemiBold'),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  const Text(
                    'No Internet Connection Found\n Check Your Connection',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'MontserratRegular',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: const Color.fromARGB(1000, 255, 127, 62),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(42, 14, 42, 14),
                      child: Text(
                        'Try Again',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'MontserratSemiBold'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
