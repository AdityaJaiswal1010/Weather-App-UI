import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/weather_location.dart';
import 'package:flutter_application_1/widgets/single_weather.dart';
import 'package:flutter_application_1/widgets/slider_dot.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/models/weather_location.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class WeatherApp extends StatefulWidget {
  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int _currentPage=0;
  String? bgImg;
  List <WeatherLocation> Location =WeatherLocation.locationLit;
  _onPageChanged(int index){
    setState(() {
      _currentPage=index;
    });
  }
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      extendBodyBehindAppBar: true,//to make appbar transparent
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.white),
        ),
        
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,//for transperancy
        leading: IconButton(
          onPressed:(){},
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child:GestureDetector( //gesture detector make a icon act as abutton with its ontap function
              onTap: (){},
              child: Image.asset(
                'assets/menu.jpg',
                height: 30,
                width: 30,
                
              ),
            ),
          ),
        ],
      ),
      body: Container(
          child: Stack(
        //stack widget to have different widgets on it
        children: [
          Image.asset(
            'assets/image5.jpg',
            fit: BoxFit.cover,
            height: double.infinity, //making it to full screen
            width: double.infinity,
          ),
          //as the image can be bright and we cant see the image so we have to mke the brightness of image low
          Container(
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Container(
            margin: EdgeInsets.only(top: 140,left: 20),
            //for the upper three page pointer
            child: Row(
              children: [
                for(int i =0;i<Location.length;i++)
                  if(i== _currentPage)
                    SliderDot(true)
                  else
                    SliderDot(false)
              ],
            ),
          ),
          //creating the slider
          TransformerPageView(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onPageChanged,
            itemCount:Location.length,//length of location list array
            itemBuilder: (ctx,i) => SingleWeather(i),
          ),
          
        ],
      ),),
    );
  }
}
/*
Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 12,
                  height: 5,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(5)),
                ),
                */