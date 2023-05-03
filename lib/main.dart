import 'package:flutter/material.dart';
import 'package:seminar4/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Seminar4(),
    );
  }
}

class Seminar4 extends StatefulWidget {
  const Seminar4({super.key, this.text = ''});
  final String text;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Seminar4> createState() => _Seminar4State();
}

class _Seminar4State extends State<Seminar4> {
  String txt = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ask question'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            onChanged: (value) => setState(() {
              txt = value;
            }),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(widget.text),
          const SizedBox(
            height: 16,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Second(text: txt)));
              },
              child: const Text('Ask question'))
        ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
