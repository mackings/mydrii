

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Dcars extends StatefulWidget {


  @override
  _DcarsState createState() => _DcarsState();
}

class _DcarsState extends State<Dcars> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parts of a Car"),
      ),

     body: SingleChildScrollView(
       child: Container(
         child: Column(
           children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpandablePanel(
                header: Text("The Steering",style: TextStyle(
                  ),),
                  collapsed: Text("Hello Get Started Driving"),
                  expanded: Text("The steering system converts the rotation of the steering wheel into a swivelling movement of the road wheels in such a way that the steering-wheel rim turns a long way to move the road wheels a short way.",
                    style: TextStyle( fontSize: 15),),
                  theme: ExpandableThemeData(iconColor: Colors.red)
              ),
            ),

             SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ExpandablePanel(
                   header: Text("The Seat Belt",style: TextStyle(
                   ),),
                   collapsed: Text("Hello Get Started Driving"),
                   expanded: Text("The car has two types of seats the front seat and the back seat. When you put on your seat belt, you can use the verb fasten or buckle. Some people say “Buckle up!” to tell everyone in the car to put on their seat belts."),
                   theme: ExpandableThemeData(iconColor: Colors.red)
               ),
             ),

             SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ExpandablePanel(
                   header: Text("The Radiator",style: TextStyle(
                   ),),
                   collapsed: Text("Hello Get Started Driving"),
                   expanded: Text("The radiator is responsible for helping the engine keep cool by removing heat from the coolant before it is pumped back through the engine."),
                   theme: ExpandableThemeData(iconColor: Colors.red)
               ),
             ),

             SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ExpandablePanel(
                   header: Text("The Brakes",style: TextStyle(
                   ),),
                   collapsed: Text("Hello Get Started Driving"),
                   expanded: Text("Found on all four wheels, your brakes are one of the most important safety systems on your vehicle. Disc brakes can be found on the front and back wheels and feature brake pads and calipers. Drum brakes with brake shoes and wheel cylinders may be found on the back wheels of some vehicles."),
                   theme: ExpandableThemeData(iconColor: Colors.red)
               ),
             ),

             SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ExpandablePanel(
                   header: Text("The Catalytic Converter",style: TextStyle(
                   ),),
                   collapsed: Text("Hello Get Started Driving"),
                   expanded: Text("A device that controls emissions from your vehicle, the catalytic converter transforms harmful gases and pollutants into less harmful emissions before they leave the car’s exhaust system."),
                   theme: ExpandableThemeData(iconColor: Colors.red)
               ),
             ),


             SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ExpandablePanel(
                   header: Text(" The Tail Lights/Turn Signal",style: TextStyle(
                   ),),
                   collapsed: Text("Hello Get Started Driving"),
                   expanded: Text("The lights on the back of the car are called tail lights. The red light in the picture is a tail light. We also have an orange or yellow light called a turn signal. Some people call these “blinkers.” You use the turn signals when you are going to turn left or right."),
                   theme: ExpandableThemeData(iconColor: Colors.red)
               ),
             ),
           ],
         ),
       ),
     )

    );
  }
}
