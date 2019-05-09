import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sign_in/src/controllers/HomeController.dart';

class Home extends StatefulWidget{
  @override
createState()=> HomeView();


}

class HomeView extends StateMVC<Home>{

  HomeView(): super(HomeController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imgs/background.png"),
            fit: BoxFit.fill
          )
        ),
      ),
    );
  }

  
}