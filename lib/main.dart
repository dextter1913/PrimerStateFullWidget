// import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "Hola Cristian";
  double progressValue = 0;
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            LinearProgressIndicator(
              value: progressValue,
              backgroundColor: Colors.red,
            ),
            Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => cambiarNombre(),
        child: const Icon(
          Icons.replay,
        ),
      ),
    );
  }

  void cambiarNombre() {
    setState(() {
      if (name == "Hola Cristian") {
        name = "Hola Aguirre";
      } else {
        name = "Hola Cristian";
      }
      progressValue += 0.01;
    });
  }

  @override
  void initState() {
    super.initState();
    // Timer.periodic(
    //     const Duration(
    //       seconds: 1,
    //     ), (value) {
    //   cambiarNombre();
    // });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
