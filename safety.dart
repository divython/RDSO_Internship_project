import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:trainappfinal/pages/home_page.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_platform_interface/just_audio_platform_interface.dart';
import 'package:trainappfinal/pages/signin.dart';
import 'package:trainappfinal/pages/user.dart';
import 'heritage.dart';
import 'main.dart';
import 'package:audioplayers/audioplayers.dart';

import 'feedback.dart';

class SafetyPage extends StatelessWidget {
  // final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;

  // get player => null;
  


  // void _emergencyCall() {
  //
  //   // Implement your emergency call logic here
  // }

  // void _emergencyLocation() async {
  //   LocationPermission permission = await _geolocatorPlatform.checkPermission();
  //
  //   if (permission == LocationPermission.deniedForever) {
  //     // Location permissions are permanently denied
  //     return;
  //   }
  //
  //   if (permission == LocationPermission.denied) {
  //     // Location permissions are denied, ask for permissions
  //     permission = await _geolocatorPlatform.requestPermission();
  //     if (permission != LocationPermission.whileInUse &&
  //         permission != LocationPermission.always) {
  //       // Location permissions are denied (again), handle accordingly
  //       return;
  //     }
  //   }
  //
  //   // Get the current position
  //   final Position position = await _geolocatorPlatform.getCurrentPosition();
  //   // Use the position.latitude and position.longitude
  //   // to send the emergency location information to the appropriate services
  // }
  //
  // void _showSafetyMeasuresDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('Safety Measures'),
  //         content: Text('Implement your safety measures content here.'),
  //         actions: <Widget>[
  //           TextButton(
  //             child: Text('Close'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Safety and Security'),
      // ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              CupertinoColors.activeBlue,
              Colors.deepPurple,
              Colors.pinkAccent
            ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [


                Container(
                  margin: EdgeInsets.only(left: 10,top: 27),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 30,
                          color: Colors.grey.shade900,
                          blurStyle: BlurStyle.solid,
                          // offset:Offset(10, 10)
                        )
                      ]
                  ),
                  padding: EdgeInsets.zero,
                  child:
                  SizedBox(width: 200,
                    height: 80,
                    child:Padding(
                      padding: const EdgeInsets.fromLTRB(15,6,10,7),
                      child: GradientText('PASSENGER AWARENESS',
                        style: TextStyle(
                            fontSize: 33,fontWeight: FontWeight.w900),
                        colors: [
                          Colors.blue,
                          // Colors.pink,
                          Colors.purple
                        ],
                      ),
                    )
                  ),
                ),

                // Container(decoration: BoxDecoration(
                //   shape: BoxShape.circle,
                //     color: Colors.yellow
                // ),padding:EdgeInsets.all(10),
                //     child: Icon(Icons.settings,color: Colors.blueAccent,)),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(top: 30,right: 10),decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple,
                          blurRadius: 30,
                          blurStyle: BlurStyle.solid,

                        )
                      ],
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),padding:EdgeInsets.all(15),
                      child: Icon(Icons.logout_rounded,color: Colors.deepPurple,size: 40,)),

                  onTap: ()async{
                    await FirebaseAuth.instance.signOut();
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>signIn()));

                  },),
                // Container(
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //         color: Colors.yellow
                //     ),padding:EdgeInsets.zero,
                //     child: IconButton(onPressed: null , icon: Icon(Icons.home_filled,color: Colors.blueAccent,)))
              ],
            ),
            const SizedBox(
              height:30,
              child: Text('PASSENGER AMENETIES',style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,color: Colors.black87),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              height: 600,
              child: ListView(
                // itemExtent: 250,
                // padding: EdgeInsets.only(top: 5,bottom: 5),

                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Accommodation Classes:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/omkar-jadhav-whSZtbvdbEs-unsplash.jpg"),
                                  ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: 220,
                            child: const Text('Indian Railways offers a variety of accommodation classes to suit different budget and comfort preferences. '
                                '\nThe classes include: '
                                '\n- First AC (1A): The most luxurious class with private cabins, comfortable beds, bedding, and personalized service. '
                                '\n- Second AC (2A): Air-conditioned class with sleeping berths and privacy curtains. '
                                '\n- Third AC (3A): Air-conditioned class with open bays and sleeping berths. '
                                '\n- Sleeper Class (SL): Non-air-conditioned class with open bays and sleeping berths. '
                                '\n- Chair Car (CC): Air-conditioned class with comfortable seats for shorter journeys.'
                                '\nGeneral Class (GS): Non-reserved seating class with basic facilities.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 10,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Catering Services:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/irctc-new.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Indian Railways provides catering services '
                                'on most trains. Passengers can enjoy onboard meals and refreshments '
                                'through pantry cars or onboard catering staff. The menu options include '
                                'vegetarian and non-vegetarian meals, snacks, beverages, and special dietary '
                                'requirements on request. Some long-distance trains also offer a complimentary '
                                'meal service for specific classes.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Bedding and Linen',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/Linen-Blankets-In-Trains.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text(':For overnight journeys in AC classes, '
                                'Indian Railways provides clean bedding and linen. Passengers are provided '
                                'with pillows, sheets, blankets, and towels to ensure a comfortable sleep.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Security:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/railways-earmarks-seats-for-on-board-security-personnel.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: 220,
                            child: const Text('Indian Railways places a high emphasis on passenger safety and security. '
                                'Trains are equipped with security personnel who patrol the coaches and stations to '
                                'ensure a safe environment for passengers. They are responsible for preventing unauthorized '
                                'entry, ticket checking, and handling security-related concerns. Moreover, Indian Railways '
                                'has emergency helpline numbers that passengers can contact in case of any security issues or emergencies.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Charging Points',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/20150710141419.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Charging Points:Most train coaches are equipped with '
                                'charging points near the seats or in the compartments. Passengers can use'
                                ' these charging points to charge their electronic devices such as mobile '
                                'phones, laptops, and tablets during the journey.'
                                '\n \nIndian Railways has introduced Wi-Fi services on select trains '
                                'and at major stations. Passengers can access the internet through '
                                'the onboard Wi-Fi network, enabling them to browse the web, check '
                                'emails, and stay connected during their journey.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Medical Facilities',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/EqvSPgzVQAIvGh4.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Medical Facilities:Trains are equipped with '
                                'medical facilities and first aid kits to handle medical '
                                'emergencies. Onboard medical staff can provide immediate '
                                'assistance in case of illnesses or injuries during the journey. '
                                'Major stations also have medical facilities and doctors available'
                                ' to cater to the medical needs of passengers.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Luggage and Parcel Services',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/train-parcel-service-in-chennai.png"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Luggage and Parcel Services:Indian Railways offers'
                                ' luggage and parcel services for the convenience of passengers. '
                                'Passengers can transport their luggage or parcels through the '
                                'railways, either accompanying them or using the separate '
                                'luggage or parcel van service.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Retiring Rooms',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/Rejuvenate-Refresh-@-Renovated-Retiring-Rooms-2.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Retiring Rooms:At major railway stations, '
                                'Indian Railways provides retiring rooms or dormitories. '
                                'These rooms are available for passengers to rest or stay '
                                'for a few hours during layovers or long waits. They are '
                                'equipped with basic amenities like beds, bathrooms, and storage facilities.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Reservation and Ticketing Services',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/images.jpeg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Reservation and Ticketing Services:Indian Railways provides'
                                ' multiple options for reservation and ticketing. Passengers can book their '
                                'tickets online through the IRCTC website or mobile app. Ticket counters at '
                                'railway stations and authorized travel agents are also available for ticket '
                                'booking. Indian Railways has introduced various initiatives to facilitate easy '
                                'and hassle-free ticket booking for passengers.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Accessibility',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/126831-qzpvyzraey-1567666786.jpeg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Accessibility:Indian Railways is committed to providing '
                                'accessible facilities for differently-abled passengers. Many trains and '
                                'stations have ramps, designated seating areas, and accessible toilets '
                                ''
                                'for passengers with disabilities. Additionally, assistance is provided '
                                'to passengers who require special support or have mobility challenges.'
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Cleanliness and Waste Management',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/garbage_63d60d6dad0a6.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Cleanliness and Waste Management:Indian Railways places great '
                                'emphasis on cleanliness. Regular cleaning and maintenance activities are carried'
                                ' out in trains and at stations to ensure cleanliness and hygiene. Waste disposal'
                                ' systems are in place, including dustbins and garbage collection facilities to keep'
                                ' the coaches and stations clean.'),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),

            ),

            // Container(
            //   child: Center(
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         ElevatedButton(
            //           onPressed: (){
            //             player.setSource(AssetSource('assets/audio/alarm.mp3'));
            //           }
            //           ,
            //           child: Text('Emergency Alarm'),
            //         ),
            //         ElevatedButton(
            //           onPressed: _emergencyCall,
            //           child: Text('Emergency Call'),
            //         ),
            //         ElevatedButton(
            //           onPressed: _emergencyLocation,
            //           child: Text('Emergency Location'),
            //         ),
            //         ElevatedButton(
            //           onPressed: () => _showSafetyMeasuresDialog(context),
            //           child: Text('Safety Measures'),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Container(
            //   decoration: BoxDecoration(
            //
            //     color: Colors.yellowAccent,
            //     borderRadius: BorderRadius.circular(20),
            //     // border: Border.all(),
            //       boxShadow: [
            //         BoxShadow(
            //           spreadRadius: 0,
            //           blurRadius: 10,
            //           color: Colors.grey.shade900,
            //           blurStyle: BlurStyle.solid,
            //           // offset:Offset(10, 10)
            //         )
            //       ]
            //
            //
            //
            //   ),
            //   child: SizedBox(
            //     height: 150,
            //     width: 390,
            //     child: Center(child: Text('guidelines')),
            //   ),
            //
            // ),
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.greenAccent,
            //     borderRadius: BorderRadius.circular(20),
            //       boxShadow: [
            //         BoxShadow(
            //           spreadRadius: 0,
            //           blurRadius: 10,
            //           color: Colors.grey.shade900,
            //           blurStyle: BlurStyle.solid,
            //           // offset:Offset(10, 10)
            //         )
            //       ]
            //
            //
            //   ),
            //   child: SizedBox(
            //     height: 150,
            //     width: 390,
            //     child: Center(child: Text('helpline numbers')),
            //   ),
            //
            // ),
            // Container(
            //   height: 150,
            //   decoration: BoxDecoration(
            //     // color: Colors.lightBlueAccent,
            //     borderRadius: BorderRadius.circular(20),
            //       boxShadow: [
            //         BoxShadow(
            //           spreadRadius: 0,
            //           blurRadius: 10,
            //           color: Colors.grey.shade900,
            //           blurStyle: BlurStyle.solid,
            //           // offset:Offset(10, 10)
            //         )
            //       ]
            //
            //
            //   ),
            //   child: Row(
            //     children: [
            //       Container(
            //         decoration: BoxDecoration(
            //           image: DecorationImage(image: AssetImage("assets/images/pic1.png"),
            //             fit: BoxFit.cover,
            //
            //         ),
            //       ),),
            //       Container(
            //         child: Text('CCTV Surveillance Many trains and stations are '
            //             'equipped with closed-circuit television (CCTV) cameras. '
            //             'These cameras monitor the platforms, entrances,and key areas of the'
            //             ' trains to deter criminal activities and provide a safer environment for passengers.'),
            //       ),
            //     ],
            //   ),
            //
            // ),Container(
            //   decoration: BoxDecoration(
            //     color: Colors.redAccent,
            //     borderRadius: BorderRadius.circular(20),
            //       image: DecorationImage(image: AssetImage("assets/images/undraw_Make_it_rain_re_w9pc.png"),
            //       fit: BoxFit.cover),
            //       boxShadow: [
            //         BoxShadow(
            //           spreadRadius: 0,
            //           blurRadius: 10,
            //           color: Colors.grey.shade900,
            //           blurStyle: BlurStyle.solid,
            //           // offset:Offset(10, 10)
            //         )
            //       ]
            //
            //
            //
            //   ),
            //   child: SizedBox(
            //     height: 150,
            //     width: 390,
            //     child: Center(child: Text('ameneties')),
            //   ),
            //
            // ),
            Container(
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [


                  InkWell(
                    child: Container(padding:EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,

                          boxShadow: [
                            BoxShadow(
                                color: Colors.deepOrangeAccent,
                                blurRadius: 20,
                                blurStyle: BlurStyle.solid
                            )

                          ],
                          shape:BoxShape.circle



                      ),
                      child: Icon(Icons.home,size: 55,color: Colors.deepOrangeAccent,),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                  ),
                  InkWell(
                    child: Container(padding:EdgeInsets.all(10),

                      child: Icon(Icons.image,size: 50,color: Colors.deepOrangeAccent,),
                      decoration: BoxDecoration(
                        color: Colors.white,

                        boxShadow: [
                          BoxShadow(
                              color: Colors.deepOrangeAccent,
                              blurRadius: 20,
                              blurStyle: BlurStyle.solid
                          )

                        ],
                        shape:BoxShape.circle,
                      ),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HeritagePage()));
                    },
                  ),
                  InkWell(
                    child: Container(
                      padding:EdgeInsets.all(10),
                      child: Icon(Icons.person,size: 50,color: Colors.deepPurple,),
                      decoration: BoxDecoration(
                          color: Colors.white,

                          boxShadow: [
                            BoxShadow(
                                color: Colors.deepPurple,
                                blurRadius: 20,
                                blurStyle: BlurStyle.solid
                            )

                          ],
                          shape:BoxShape.circle



                      ),
                    ),
                    // onTap: (){
                    //   Navigator.push(context,MaterialPageRoute(builder: (context)=>SafetyPage()));
                    // },
                  ),
                  InkWell(
                    child: Container(padding:EdgeInsets.all(10),
                      child:
                      Icon(Icons.health_and_safety,size: 50,color: Colors.deepOrangeAccent,),
                      decoration: BoxDecoration(
                          color: Colors.white,

                          boxShadow: [
                            BoxShadow(
                                color: Colors.deepOrangeAccent,
                                blurRadius: 20,
                                blurStyle: BlurStyle.solid
                            )

                          ],
                          shape:BoxShape.circle



                      ),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPage()));
                    },
                  )
                ],

              ),

            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_filled),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.train_rounded),
      //       label: 'Passenger',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat),
      //       label: 'Services',
      //     ),
      //   ],
      //   onTap: (int index) {
      //     if (index == 1) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => IndianRailwaysApp()),
      //       );
      //     } else if (index == 2) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => FeedbackPage()),
      //       );
      //     }
      //   },
      // ),
    );
  }
}
