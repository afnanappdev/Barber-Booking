import 'package:flutter/material.dart';
import 'Home_Screen_with_Barber_List.dart';
import 'booking_screen.dart';

void main() async {
  runApp(BarberApp());
}

class BarberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barber Booking',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: homescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
