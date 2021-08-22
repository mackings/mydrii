import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mydriver/Roadsigns.dart';
import 'package:mydriver/Videos.dart';
import 'package:mydriver/cars.dart';
import 'package:mydriver/carsdet.dart';
import 'package:url_launcher/url_launcher.dart';

class Dahome extends StatefulWidget {
  @override
  _DahomeState createState() => _DahomeState();
}

class _DahomeState extends State<Dahome> {
  var _url =
      ("https://docs.google.com/forms/d/e/1FAIpQLScLHamB-JaLk7Y83O85NutEjTX-6A9cfD4q-8ZCjrK5X01wEQ/viewform");
  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("My drive"),
        actions: [
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(msg: "Massages not Avail");
              },
              icon: Icon(Icons.chat)),
        ],
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          children: [
            Card(
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.workspaces_outline,
                      color: Colors.red,
                      size: 60,
                    ),
                    Text(
                      "Safety  ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dcars()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.data_usage_sharp,
                      color: Colors.red,
                      size: 60,
                    ),
                    Text(
                      "Parts ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Myvideos()));
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.drive_eta_outlined,
                      color: Colors.red,
                      size: 61,
                    ),
                    Text(
                      "Driving",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Rsigns()));
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.follow_the_signs,
                      color: Colors.red,
                      size: 61,
                    ),
                    Text(
                      "Road Signs",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _launchURL();
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.edit_road_sharp,
                      color: Colors.red,
                      size: 61,
                    ),
                    Text(
                      "Road Rules",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _launchURL();
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: Colors.red,
                      size: 61,
                    ),
                    Text(
                      "Buy a Car ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _launchURL();
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.book_online,
                      color: Colors.red,
                      size: 61,
                    ),
                    Text(
                      " Lend a Car ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _launchURL();
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.book_online,
                      color: Colors.red,
                      size: 61,
                    ),
                    Text(
                      " Send a Feedback ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Driver "),
              accountEmail: Text("Driver@Gmail.com"),
            ),
            ListTile(
              title: Text("Hire a Driver"),
              leading: Icon(
                Icons.person,
                color: Colors.red,
                size: 40,
              ),
              subtitle: Text(
                "You can hire a driver as your personal chauffer",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carsdetails()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Rent a Car"),
              leading: Icon(
                Icons.car_rental,
                color: Colors.red,
              ),
              subtitle: Text(
                "Rent Cars for your Emergency and personal services",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carsdetails()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Buy a Car"),
              leading: Icon(
                Icons.credit_card,
                color: Colors.red,
              ),
              subtitle: Text(
                "Buy Quality cars with Max speed and V8 supported Engines",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carsdetails()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Sell your Car"),
              leading: Icon(
                Icons.monetization_on_rounded,
                color: Colors.red,
                semanticLabel: "Cash",
              ),
              subtitle: Text(
                "Sell Your Used cars at good rates",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carsdetails()));
              },
            ),
            ListTile(
              title: Text("Repair a Car"),
              leading: Icon(Icons.message_outlined),
              subtitle: Text("Drivers at your Door step"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carsdetails()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
