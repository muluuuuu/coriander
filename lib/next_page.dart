import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('次の画面'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(name),
            Center(
              child: ElevatedButton(
                  child: Text('戻る'),
                  onPressed: (){
                    // ここを押したら反応するコードを書く
                    Navigator.pop(context, 'Hello Muluuuuu');
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}