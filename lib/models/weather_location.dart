
import 'package:flutter/material.dart';

class WeatherLocation {
  final String? city;
  
  final String? temparature;
  final String? weatherType;
  final IconData? iconUrl;
  final int? wind;
  final int? rain;
  final int? humidity;

  WeatherLocation({
    @required this.city,
    @required this.temparature,
    @required this.weatherType,
    @required this.iconUrl,
    @required this.wind,
    @required this.rain,
    @required this.humidity,
  }); 



static List<WeatherLocation>  locationLit=<WeatherLocation>[
  WeatherLocation(
    city: 'Mumbai',
    temparature:'22\u2103',
    weatherType: 'Cloudy',
    iconUrl:Icons.cloud,
    wind:10,
    rain:2,
    humidity:10,
  ),
  WeatherLocation(
    city: 'Kolkata',
    temparature:'24\u2103',
    weatherType: 'Sunny',
    iconUrl:Icons.wb_sunny,
    wind:12,
    rain:40,
    humidity:10,
  ),
  WeatherLocation(
    city: 'Banglore',
    temparature:'25\u2103',
    weatherType: 'Cloudy',
    iconUrl:Icons.cloud,
    wind:9,
    rain:4,
    humidity:12,
  ),
  WeatherLocation(
    city: 'Delhi',
    temparature:'24\u2103',
    weatherType: 'Night',
    iconUrl:Icons.night_shelter,
    wind:10,
    rain:2,
    humidity:10,
  ),
];
}