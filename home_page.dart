import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:trainappfinal/pages/signin.dart';
import 'package:trainappfinal/pages/user.dart';
import 'heritage.dart';
import 'safety.dart';
import 'feedback.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(IndianRailwaysApp());
}

class IndianRailwaysApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indian Railways',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final user =FirebaseAuth.instance.currentUser!;
  List<String> docIds=[];
  Future getDocId()async{
    await FirebaseFirestore.instance.collection('users').get().then((snapshpot) => snapshpot.docs.forEach((document) {
      docIds.add(document.reference.id);
    }));
  }
   final FirebaseAuth _auth=FirebaseAuth.instance;
  @override
  void initState(){
    getDocId();

  }
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Image.asset('assets/images/logo (2).png',repeat: ImageRepeat.repeatX,
      //     width: 140,),
      //   backgroundColor: Colors.white,
      //   elevation: 20,
      //   centerTitle: true,
      //
      //
      // ),
      //drawer: Drawer(
       // backgroundColor: Colors.black,

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

                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(1),
                      // backgroundBlendMode: BlendMode.color,
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
                  SizedBox(width: 210,
                    height: 80,
                    child: GestureDetector(
                      onTap: _launchURL,
                      child: Padding(
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
                      // Image.asset('assets/images/logo (2).png',fit: BoxFit.cover,
                      //   // Text('hello ',
                      //   // style: TextStyle(
                      //   //   color: Colors.red,
                      //   //   fontSize: 50
                      // ),
                    ),
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
                  await _auth.signOut();
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
            // SizedBox(
            //   height: 15,
            // ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo (1).png'),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Passenger Awareness is a Flutter app created by Divyanshu,Asad Khan,and Rashi. '
                            '\nIt offers a seamless '
                            '\nour app aims to enhance travel '
                            'knowledge and convenience, ensuring a delightful journey for passengers.'
                            '\ntravel experience through its four main pages: \nHome, Gallery, Amenities, and Safety.\n '
                            ' \n',
                        style: TextStyle(
                          fontSize: 20.0,
                          // fontWeight: FontWeight.bold
                        ),
                        // gradientType: GradientType.radial,
                        // radius: 1,
                        // colors: [
                        //   Colors.black,
                        //   // Colors.grey,
                        //   // Colors.grey ,
                        //   Colors.black,
                        //
                        //   // Colors.redAccent,
                        //   // Colors.deepPurpleAccent,
                        //   // Colors.lightBlueAccent,
                        //   // Colors.deepOrangeAccent,
                        // ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(bottom: 20),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [


                  InkWell(
                    child: Container(padding:EdgeInsets.all(10),
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
                      child: Icon(Icons.home,size: 55,color: Colors.deepPurple,),),
                    // onTap: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    // },
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
                      child: Icon(Icons.person,size: 50,color: Colors.deepOrangeAccent,),
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
                    ),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SafetyPage()));
                    },
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
            ),

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
      //     if (index == 0) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => HomePage()),
      //       );}
      //
      //     else if (index == 1) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => SafetyPage()),
      //       );
      //     } else if (index == 2) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => FeedbackPage()),
      //       );
      //     }
      //   },
      //   showSelectedLabels: true,
      //   selectedItemColor: Colors.red,
      // ),
    );
  }
}
_launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunchUrl(url as Uri)) {
    await launchUrl(url as Uri);
  } else {
    throw 'Could not launch $url';
  }
}
