import 'package:flutter/material.dart';
import 'package:sfd/ui/day13/login_page.dart';

import 'bloc/providers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("Log in")),
          body: LoginPage(),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
