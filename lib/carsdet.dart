import 'package:flutter/material.dart';

class Carsdetails extends StatefulWidget {


  @override
  _CarsdetailsState createState() => _CarsdetailsState();
}

class _CarsdetailsState extends State<Carsdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Cars and Engine Types"),
      ),

      body: Container(
        child: Column(
          children: [
            Card(
             child: Container(

             ),
            ),
          ],
        ),
      ),
    );
  }
}
