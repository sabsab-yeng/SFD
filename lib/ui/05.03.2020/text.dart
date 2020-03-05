import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'First App',
          style: TextStyle(
            fontSize: 34,
            color: Color.fromARGB(255, 153, 255, 204),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Hello world'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Hello world'),
                  Spacer(),
                  Text('Hello world'),
                ],
              ),
              RaisedButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Icon(Icons.cloud_circle),
                    Text('Click me'),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Text("good"),
                    Icon(
                      Icons.ac_unit,
                      size: 80,
                      color: Colors.green,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
