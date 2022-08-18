import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:qwerty/pages/animation_controller.dart';
import 'package:qwerty/pages/hero_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool flagAlign = true;
  int flagContainer = 100;
  int flagContainer2 = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Image.asset(
                "assets/images/batman.jpg",
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HeroPage()));
                },
                child: Text(
                  "Hero",
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () {
                  flagAlign = !flagAlign;
                  setState(() {});
                },
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.greenAccent,
                  child: AnimatedAlign(
                    alignment:
                        flagAlign ? Alignment.bottomRight : Alignment.topLeft,
                    curve: Curves.easeOut,
                    duration: Duration(seconds: 2),
                    child: Image.asset(
                      "assets/images/batman.jpg",
                      height: 60,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () {
                  flagContainer = 30 + Random().nextInt(300);
                  flagContainer2 = 30 + Random().nextInt(300);
                  setState(() {});
                },
                child: AnimatedContainer(
                  height: flagContainer.toDouble(),
                  width: flagContainer2.toDouble(),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(
                      flagContainer.toDouble(),
                    ),
                  ),
                  duration: Duration(seconds: 2),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              AnimatedCrossFade(
                firstChild: FlutterLogo(
                  size: 200,
                  style: FlutterLogoStyle.horizontal,
                ),
                secondChild: FlutterLogo(
                  size: 200,
                  style: FlutterLogoStyle.stacked,
                ),
                crossFadeState: CrossFadeState.showSecond,
                duration: Duration(seconds: 10),
              ),
              SizedBox(
                height: 30,
              ),
              AnimatedDefaultTextStyle(
                child: Text("Hola"),
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 14,
                ),
                duration: Duration(seconds: 2),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.indigoAccent,
              ),
              SizedBox(
                height: 30,
              ),
              AnimatedOpacity(
                opacity: 0.8,
                duration: Duration(milliseconds: 1000),
                child: Image.asset("assets/images/batman.jpg"),
              ),
              SizedBox(
                height: 30,
              ),
              AnimatedPhysicalModel(
                child: Container(
                  width: 200,
                  height: 200,
                ),
                shape: BoxShape.rectangle,
                elevation: 30,
                color: Colors.white,
                shadowColor: Colors.indigo,
                duration: Duration(seconds: 2),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AnimationControllerPage()));
              }, child: Text("Hola"),),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
