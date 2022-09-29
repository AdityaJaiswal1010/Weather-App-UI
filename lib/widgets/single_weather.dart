import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/weather_location.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleWeather extends StatelessWidget {
  final int index;
  SingleWeather(this.index);
  List <WeatherLocation> Location =WeatherLocation.locationLit;
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,//spacing between the after white lined texts
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column( //as we want another sub container exactly at the same line
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        SizedBox(height: 140,),
                        Text(
                          Location[index].city.toString(),
                          style: GoogleFonts.lato(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '----------------------',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                            // making the text to left do crossaxis at start
                        )
                      ],
                          ),
                          Column(
                  //we want this column content at the buttom part
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                          Location[index].temparature.toString(),//unicode for degree celsius is \u2103
                          style: GoogleFonts.lato(
                            fontSize: 65,
                            fontWeight: FontWeight.w300,
                            color:Colors.white),
                        ),
                    Row(
                      children: [
                        Icon(
                         Location[index].iconUrl,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text(
                              Location[index].weatherType.toString(),
                               style: GoogleFonts.lato(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color:Colors.white),
                        ),
                      ],
                    ),
                  ],
                    ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                          'Wind',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                        ),
                        Text(
                         Location[index].wind.toString(),
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                            // making the text to left do crossaxis at start
                        ),
                        Text(
                          'km/hr',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                            // making the text to left do crossaxis at start
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,
                              
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: Colors.green,
                            ),
                          ],
                        ),
                            ],
                            
                          ),
                          SizedBox(width: 70,),
                          Column(
                            children: [
                              Text(
                          'Humidity',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                        ),
                        Text(
                         Location[index].humidity.toString(),
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                            // making the text to left do crossaxis at start
                        ),
                        Text(
                          '%',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                            // making the text to left do crossaxis at start
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,
                              
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                            ],
                            
                          ),
                           SizedBox(width: 70,),
                          Column(
                            children: [
                              Text(
                          'Rain',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                        ),
                        Text(
                          Location[index].rain.toString(),
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                            // making the text to left do crossaxis at start
                        ),
                        Text(
                          '%',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color:Colors.white),
                            // making the text to left do crossaxis at start
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,
                              
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: Colors.red,
                            ),
                          ],
                        ),
                            ],
                            
                          ),
                          
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            
          );///
  }
}