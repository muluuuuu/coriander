import 'package:coriander/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  String text = '次へ';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Practice'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(text),
          onPressed: () async {
           // ここを押したら反応するコードを書く
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NextPage('Muluuuuu')
              ),
            );
            text = result;
            print(result);
          }
        ),

      ),
    );
  }
}
