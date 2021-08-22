

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';



class Rsigns extends StatelessWidget {
  final String dogUrl = 'https://www.svgrepo.com/download/283131/maps-and-flags-road-sign.svg';
  final String turning = "https://www.svgrepo.com/download/270855/road-sign-turn.svg";
  final String tlight = "https://www.svgrepo.com/download/273356/traffic-light.svg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Road Signs"),
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                    width: 500,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color : Colors.blue
                    ),
                 //child
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Center(
                         child: SvgPicture.network(
                           dogUrl,placeholderBuilder: (context) => Center(child: CircularProgressIndicator()),
                           width: 100.0,
                           height:100.0,
                         ),
                       ),
                     ),
                      Center(child: Text("Routes" ,style: TextStyle( fontSize: 50,color: Colors.white),)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 500,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color : Colors.blue
                  ),
                  //child
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: SvgPicture.network(
                            turning,placeholderBuilder: (context) => Center(child: CircularProgressIndicator()),
                            width: 100.0,
                            height:100.0,
                          ),
                        ),
                      ),
                      Center(child: Text("Turning" ,style: TextStyle( fontSize: 50,color: Colors.white),)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 11,
                ),

                Container(
                  width: 500,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color : Colors.blue
                  ),
                  //child
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: SvgPicture.network(
                            tlight,placeholderBuilder: (context) => Center(child: CircularProgressIndicator()),
                            width: 100.0,
                            height:100.0,
                          ),
                        ),
                      ),
                      Center(child: Text("Lights" ,style: TextStyle( fontSize: 50,color: Colors.white),)),
                    ],
                  ),
                ),
            SizedBox(
              height: 10,
            ),

                InkWell(
                  onTap: (){
                    Fluttertoast.showToast(
                        msg: "Hello This is a Toast",
                      toastLength: Toast.LENGTH_LONG,
                      backgroundColor: Colors.red,
                      gravity: ToastGravity.CENTER
                    );
                  },
                  child: Container(
                    width: 500,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color : Colors.blue
                    ),
                    //child
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: SvgPicture.network(
                              tlight,placeholderBuilder: (context) => Center(child: CircularProgressIndicator()),
                              width: 100.0,
                              height:100.0,
                            ),
                          ),
                        ),
                        Center(child: Text("Lights" ,style: TextStyle( fontSize: 50,color: Colors.white),)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
