import 'package:flutter/material.dart';

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
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Welcome'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        Text("My app",
            style: TextStyle(
              backgroundColor: Color.fromARGB(255, 207, 134, 129),
              color: Color.fromARGB(255, 5, 30, 6),
              fontSize: 25,
            )),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter text',
            hintText: 'Enter text',
          ),
        ),
        Image.network(
            'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png',
            height: 400,
            width: 250),
        ElevatedButton(
          onPressed: () {},
          // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
          style: ElevatedButton.styleFrom(
              elevation: 12.0, textStyle: const TextStyle(color: Colors.white)),
          child: const Text('Submit'),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.yellow,
          onPressed: () => {}),
    );
  }
}
