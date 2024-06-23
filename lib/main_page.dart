import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  const MainPage({super.key,required this.title});

  final String title;
  @override
  State<MainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPage> {
  final myitems =[
    Image.network('https://scdev9.github.io/android/assets/images/slider/image1.jpg'),
    Image.network('https://scdev9.github.io/android/assets/images/slider/image2.jpg'),
    Image.network('https://scdev9.github.io/android/assets/images/slider/image3.jpg'),
    Image.network('https://scdev9.github.io/android/assets/images/slider/image4.jpg'),
  ];
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0e0f23),
       appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Color(0xff025475),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title,
        style: const TextStyle(color: Colors.white),),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(options: CarouselOptions(
              autoPlay: true,
              height: 200,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(seconds: 1),
              autoPlayInterval: const Duration(seconds: 7 ),
              enlargeCenterPage: true,
              aspectRatio: 1.7,
              onPageChanged: (index, reason) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
            ),
            items: myitems,)
          ],
        ),
      )
          
        );
          
        
      
    
  }
}
