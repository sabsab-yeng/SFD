import 'package:rxdart/rxdart.dart';
import 'package:sfd/bloc/validators.dart';
import 'dart:async';

class Bloc extends Object with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //Add data to Stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  //Handle when we click and send data to stream
  Stream<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) => true);

  //Change Data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  //submit
  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print("Email: $validEmail and Password: $validPassword");
  }

  dispose(){
    _passwordController.close();
    _emailController.close();
  }
}
