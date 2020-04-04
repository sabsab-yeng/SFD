import 'package:flutter/material.dart';
import 'package:sfd/bloc/bloc.dart';
import 'package:sfd/bloc/providers.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget emailFieled(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: "Email",
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passFieled(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: "Password",
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text("Login"),
          color: Colors.blue,
          onPressed: snapshot.hasData ? bloc.submit() : null,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          emailFieled(bloc),
          passFieled(bloc),
          Container(margin: EdgeInsets.only(top: 25.0),),
          submitButton(bloc),
        ],
      ),
    );
  }
}
