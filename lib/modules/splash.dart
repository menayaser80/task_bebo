import 'package:flutter/material.dart';
import 'LoginPage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
     
      const Duration(seconds: 2),() =>
       Navigator.push( context,MaterialPageRoute( builder: (context) =>
       LoginPage(),
       
         ) ),

    );
    super.initState();
  }
//                                                'assets/images/back.png'
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/firstphoto.png"),fit: BoxFit.cover)),
      )
        );
  }
}