import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:iptv_app/main.dart';
import 'package:iptv_app/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
with SingleTickerProviderStateMixin {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 6), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_)=> const MainPage(title: "Shamika LiveTV",)));
    });
  }

  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors:[Color(0xff0e0f23), Color(0xff0e0f23)]
            )
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Column(
                     children:[ Image.asset(
                          'assets/images/logo.png',
                          height: 85.0,
                          fit: BoxFit.cover,
                        ),
                       const Text("Shamika LiveTV",
                       style: TextStyle(color: Colors.white),
                       )],
            )
          ],
          ),

      ),
    );
  }
}