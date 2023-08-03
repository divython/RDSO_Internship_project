import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:trainappfinal/pages/bridgeandtunnels.dart';
import 'package:trainappfinal/pages/railLines.dart';
import 'package:trainappfinal/pages/safety.dart';
import 'package:trainappfinal/pages/signin.dart';
import 'package:trainappfinal/pages/stations.dart';
import 'package:trainappfinal/pages/user.dart';
import 'stations.dart';

import 'feedback.dart';
import 'home_page.dart';



class HeritagePage extends StatelessWidget {
  const HeritagePage({super.key});


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
              height:50,
              child: Text('GALLERY',style: TextStyle(fontWeight: FontWeight.bold,fontSize:50,color: Colors.black87),),
            ),
            CarouselSlider(
                items: [

                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pic1.jpg'),
                          fit: BoxFit.cover,
                        )
                    ),

                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pic2.jpg'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pic3.jpg'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pic4.jpg'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pic5.jpg'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pic6.jpg'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pic7.jpg'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pic8.jpg'),
                          fit: BoxFit.cover,
                        )
                    ),
                  )

                ],
                options:CarouselOptions(
                    viewportFraction: 0.8,
                    enlargeCenterPage: true,
                    height: 500.0
                )

            ),
            Padding(
              padding: const EdgeInsets.all(20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   InkWell(
                     child: Container(
                       height: 50,
                       width: 100,
                       decoration:  BoxDecoration(
                         // color: Colors.blueGrey,
                         gradient: const LinearGradient(colors: [
                           Colors.deepPurple,
                           // CupertinoColors.activeBlue,
                           // Colors.deepPurple,
                           Colors.pinkAccent
                         ],
                             begin: Alignment.topCenter,
                             end: Alignment.bottomCenter),
                         borderRadius: BorderRadius.circular(12),


                       ),
                       child: const Center(child: Text('STATIONS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black87))),
                     ),
                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const stations()));}
                   ),
                   InkWell(
                     child: Container(

                       height: 50,
                       width: 100,
                       decoration:  BoxDecoration(
                               gradient: const LinearGradient(colors: [
                                 Colors.deepPurple,
                                 // CupertinoColors.activeBlue,
                                 // Colors.deepPurple,
                                 Colors.pinkAccent
                               ],
                                   begin: Alignment.topCenter,
                                   end: Alignment.bottomCenter),
                         borderRadius: BorderRadius.circular(12),


                       ),
                       child: const Center(child: Text('BRIDGES',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black87))),
                     ),
                       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const bridgesandtunnels()));}
                   ),
                   InkWell(
                     child: Container(
                       height: 50,
                       width: 100,
                       decoration: BoxDecoration(
                           // color: Colors.blueGrey
                         gradient: const LinearGradient(colors: [
                           Colors.deepPurple,
                           // CupertinoColors.activeBlue,
                           // Colors.deepPurple,
                           Colors.pinkAccent
                         ],
                             begin: Alignment.topCenter,
                             end: Alignment.bottomCenter),
                         borderRadius: BorderRadius.circular(12),
                       ),
                       child: const Center(child: Text('RAIL LINES',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black87))),
                     ),
                       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const railines()));}
                   ),
                 ],
               )

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
                      color: Colors.deepPurple,
                      blurRadius: 20,
                      blurStyle: BlurStyle.solid
                  )

                ],
                shape:BoxShape.circle,
              ),

              child: const Icon(Icons.image,size: 50,color: Colors.deepPurple,),),

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
                        color: Colors.deepOrangeAccent,
                        blurRadius: 20,
                        blurStyle: BlurStyle.solid
                    )

                  ],
                  shape:BoxShape.circle



              ),
              child:
              const Icon(Icons.health_and_safety,size: 50,color: Colors.deepOrangeAccent,),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPage()));
            },
          )
        ],

    ),

        )],

          ),
      ),
      );


  }
}