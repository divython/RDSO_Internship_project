import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:trainappfinal/pages/signin.dart';
import 'package:trainappfinal/pages/user.dart';
import 'heritage.dart';
import 'main.dart';
import 'safety.dart';
import 'package:trainappfinal/pages/safety.dart';

import 'home_page.dart';

class FeedbackPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        decoration: const BoxDecoration(
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
                  margin: const EdgeInsets.only(left: 10,top: 27),
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
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15,6,10,7),
                      child: GradientText('PASSENGER AWARENESS',
                        style: const TextStyle(
                            fontSize: 33,fontWeight: FontWeight.w900),
                        colors: const [
                          Colors.blue,
                          // Colors.pink,
                          Colors.purple
                        ],
                      ),
                    )
                  ),
                ),


                InkWell(
                  child: Container(
                      margin: const EdgeInsets.only(top: 30,right: 10),decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple,
                          blurRadius: 30,
                          blurStyle: BlurStyle.solid,

                        )
                      ],
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),padding:const EdgeInsets.all(15),
                      child: const Icon(Icons.logout_rounded,color: Colors.deepPurple,size: 40,)),

                  onTap: ()async{
                    await FirebaseAuth.instance.signOut();
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>signIn()));

                  },),

              ],
            ),
            const SizedBox(
              height:30,
              child: Text('PASSENGER SAFETY',style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,color: Colors.black87),),
            ),

            Container(
              padding: const EdgeInsets.only(left: 10,right: 10),
              height: 600,
              child: ListView(


                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
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
                                  child: const Text('Safety Staff',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 250,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/210068-untitled-design-2022-01-08t164407583.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: 220,
                            child: const Text('Safety Staff:Indian Railways has dedicated'
                                ' security personnel who patrol the trains and stations. '
                                'They ensure the safety of passengers, prevent unauthorized entry, '
                                'and handle any security-related concerns. These personnel include '
                                'Railway Protection Force (RPF) and Government Railway Police (GRP) officers.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(top: 10,bottom: 5),
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
                                  child: const Text('CCTV Surveillance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/train-cctv-s.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('CCTV Surveillance:Many trains and stations are '
                                'equipped with closed-circuit television (CCTV) cameras. '
                                'These cameras monitor the platforms, entrances, and key '
                                'areas of the trains to deter criminal activities and provide '
                                'a safer environment for passengers.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
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
                                  child: const Text('Emergency Helpline Numbers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/INTEGRATED-HELPLINE-NUMBER-OF-INDIAN-RAILWAY.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Emergency Helpline Numbers:Indian Railways has '
                                'emergency helpline numbers that passengers can contact in '
                                'case of any security issues, medical emergencies, or other '
                                'urgent situations. These helpline numbers are prominently '
                                'displayed on trains and at stations for easy access.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
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
                                  child: const Text('Coordinated Security Efforts',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/indian-railways-securities-measures-railway-protection-force.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            width: 220,
                            child: const Text('Coordinated Security Efforts:Indian Railways works '
                                'closely with various security agencies, including local police forces, '
                                'to enhance security measures. This collaboration ensures a coordinated '
                                'effort in maintaining a safe and secure railway system.'
                                'Safety Signage and Instructions:Trains and stations have safety signage,'
                                ' including evacuation routes, emergency exits, and instructions for passengers '
                                'to follow during emergencies. These signs and instructions help passengers '
                                'navigate safely in case of any unforeseen situations.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
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
                                  child: const Text('Fire Safety',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/download.jpeg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Fire Safety:Indian Railways emphasizes fire '
                                'safety on trains and stations. Coaches are equipped with fire '
                                'extinguishers and fire alarms to handle any fire-related emergencies. '
                                'Regular fire safety drills are conducted to train staff and educate '
                                'passengers on emergency procedures.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
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
                                  child: const Text('Platform Safety',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/Stationsecurity.jpeg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Platform Safety:Platforms are equipped with safety features such as'
                                ' fences, boundary walls, and tactile paving for visually impaired passengers. '
                                'Regular announcements and display boards inform passengers about platform safety'
                                ' rules, including the importance of standing behind the yellow line.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
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
                                  child: const Text('Anti-Collision Devices (ACDs)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/main-qimg-185d504d06c2e8dca3ae5bbebd10a613-lq.jpeg"),
                                    ),),

                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Anti-Collision Devices (ACDs):Indian Railways has implemented '
                                'Anti-Collision Devices (ACDs) on trains to prevent collisions and accidents. '
                                'These devices use advanced technology to detect potential collisions and'
                                ' automatically apply brakes to ensure the safety of passengers.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
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
                                  child: const Text('Track Maintenance and Inspections',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/download (1).jpeg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Track Maintenance and Inspection:Indian Railways conducts'
                                ' regular track maintenance and inspections to ensure the safe operation of'
                                ' trains. Track monitoring systems, such as Ultrasonic Flaw Detection (USFD) '
                                'and Electronic Interlocking, are employed to identify and rectify any track '
                                'defects promptly.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
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
                                  child: const Text('Passenger Safety Guidelines',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/Guidelines-for-Train-Services-beginning-on-1st-June-2020-Important-Rules-To-Follow.jpg"),
                                    ),),

                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Passenger Safety Guidelines:Indian Railways provides safety'
                                ' guidelines to passengers through announcements, posters, and information '
                                'boards. These guidelines include reminders to lock the doors, avoid leaning '
                                'out of windows, and be cautious while boarding or alighting from the train.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
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
                                  child: const Text('Child Safety Measures',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/child.jpeg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Child Safety Measures:Indian Railways takes special '
                                'care to ensure the safety of children traveling on trains. Coaches are '
                                'equipped with child safety locks, and RPF personnel are trained to handle'
                                ' cases involving missing or lost children. Awareness campaigns are conducted '
                                'to educate parents and guardians about child safety during train journeys.'
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
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
                                  child: const Text('Disaster Management',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87)),
                                ),
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/DWCy4u5WAAAaN0Q.jpg"),
                                    ),),
                                  // child: Text('Photo Heading'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: const Text('Disaster Management:Indian Railways has a well-defined '
                                'disaster management plan to handle natural disasters, accidents, and other'
                                ' emergencies. This includes the availability of rescue and relief teams, '
                                'coordination with local authorities, and prompt response in critical situations.'),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),

            ),
            Container(
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [


                  InkWell(
                    child: Container(padding:const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
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
                      child: const Icon(Icons.home,size: 55,color: Colors.deepOrangeAccent,),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                  ),
                  InkWell(
                    child: Container(padding:const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,

                        boxShadow: [
                          BoxShadow(
                              color: Colors.deepOrangeAccent,
                              blurRadius: 20,
                              blurStyle: BlurStyle.solid
                          )

                        ],
                        shape:BoxShape.circle,
                      ),

                      child: const Icon(Icons.image,size: 50,color: Colors.deepOrangeAccent,),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HeritagePage()));
                    },
                  ),
                  InkWell(
                    child: Container(
                      padding:const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
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
                      child: const Icon(Icons.person,size: 50,color: Colors.deepOrangeAccent,),
                    ),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SafetyPage()));
                    },
                  ),
                  InkWell(
                    child: Container(padding:const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
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
                      child:
                      const Icon(Icons.health_and_safety,size: 50,color: Colors.deepPurple,),),

                  )
                ],

              ),

            )
          ],

        ),
      ),
      //

    );
  }
}
