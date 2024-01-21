import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futur Console',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Futur Console'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Futur Console',
            style: TextStyle(
              fontSize: 28
            ),
          ),
        ),
        body: Container(
          child: Center(
           child: Container(
             width: 400,
             height: 400,
           child: Lottie.network('https://lottie.host/169cf206-9fec-4014-8389-9ce51523fc25/Bllh4CcxkU.json'),
        ),),)
      ),
    );
  }
}
