import 'package:flutter/widgets.dart';
import 'package:sfd/bloc/bloc.dart';

class Provider extends InheritedWidget{
  final bloc = Bloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context){
    return(context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}