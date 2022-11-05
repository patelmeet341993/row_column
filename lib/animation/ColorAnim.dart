import 'package:flutter/material.dart';

class ColorAnim extends StatefulWidget {
  @override
  State<ColorAnim> createState() => _ColorAnimState();
}

class _ColorAnimState extends State<ColorAnim> with SingleTickerProviderStateMixin  {


  late AnimationController controller;
  late Animation<Color?> coloranim;


  @override
  void initState() {
    super.initState();

    controller=AnimationController(vsync: this,duration: Duration(seconds: 2));
    coloranim=ColorTween(begin: Colors.black,end: Colors.red).animate(controller)..addListener(() {
      setState(() {});
    });


    controller.forward();

    coloranim.addStatusListener((status) {

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
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: coloranim.value,
        ),
      ),
    );
  }
}
