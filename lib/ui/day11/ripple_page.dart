import 'package:flutter/material.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:sfd/ui/day11/second_page.dart';

class RipplePage extends StatefulWidget {
  @override
  _RipplePageState createState() => _RipplePageState();
}

class _RipplePageState extends State<RipplePage> {
  GlobalKey rectGetterKey = RectGetter.createGlobalKey();

  Rect rect;

  final Duration animationDuration = Duration(milliseconds: 300);
  final Duration delay = Duration(milliseconds: 300);

  void _onPressed() {
    setState(() {
      rect = RectGetter.getRectFromKey(rectGetterKey);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) { 
      setState(() {
        return rect = rect.inflate(1.3 * MediaQuery.of(context).size.longestSide);
      });

      Future.delayed(animationDuration + delay, _gotoNextSreen);
    });
   
  }

  void _gotoNextSreen(){
     Navigator.of(context).push(FadeRouteBuilder(page: SecondPage())).then((_) => setState(()=> rect = null));
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => SecondPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text("Ripple Page"),
          ),
          floatingActionButton: FloatingActionButton(
            key: rectGetterKey,
            child: Text("Ripple"),
            onPressed: _onPressed,
          ),
        ),
        _ripple(),
      ],
    );
  }

  Widget _ripple() {
    if (rect == null) {
      return Container();
    }
    return AnimatedPositioned(
      duration: animationDuration,
      left: rect.left,
      right: MediaQuery.of(context).size.width - rect.right,
      top: rect.top,
      bottom: MediaQuery.of(context).size.height - rect.bottom,
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      ),
    );
  }
}

class FadeRouteBuilder<T> extends PageRouteBuilder<T> {
  final Widget page;

  FadeRouteBuilder({this.page})
      : super(
          pageBuilder: (context, animation1, animation2) => page,
          transitionsBuilder: (context, animation1, animation2, child) =>
              FadeTransition(
            opacity: animation1,
            child: child,
          ),
        );
}
