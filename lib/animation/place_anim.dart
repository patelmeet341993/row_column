import 'package:flutter/material.dart';

class PlaceAnimation extends StatefulWidget {
  const PlaceAnimation({Key? key}) : super(key: key);

  @override
  _PlaceAnimationState createState() => _PlaceAnimationState();
}

class _PlaceAnimationState extends State<PlaceAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween<double>(begin: 0, end: 100).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.forward();

    animation.addStatusListener((status) {

      if(status==AnimationStatus.completed)
      {
        print("sound 2");
        controller.reverse();
      }
      else if(status==AnimationStatus.dismissed)
      {
        print("sound 1");
        controller.forward();
      }

    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
              right: animation.value,
              top: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.black,
              )),
          Positioned(
              bottom: 0,
              left:animation.value ,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.black,
              )),
          Center(
            child: Container(
              height: animation.value,
              width: animation.value,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(animation.value),
                color: Colors.red,
              ),

            ),
          )
        ],
      ),
    ));
  }
}
