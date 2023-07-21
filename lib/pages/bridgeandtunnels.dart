import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class bridgesandtunnels extends StatelessWidget {
  const bridgesandtunnels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('BRIDGES AND TUNNELS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87),),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
      ),

      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              // Colors.grey,
              // Colors.grey,
              CupertinoColors.white,
              Colors.black,
              Colors.black,
            ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 80, 15, 25),
          child: ListWheelScrollView(
            itemExtent: 600,
            physics: FixedExtentScrollPhysics(),
            squeeze: 1.1,
            offAxisFraction: -1.5,
            perspective: 0.001,
            diameterRatio: 1.5,
            children: [
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/chenab bridge.jpg'),height:500,fit: BoxFit.cover,),
                          Text('Chenab Bridge',
                            //     style: TextStyle(
                            //   height: 20,
                            //
                            // ),
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),]

                    ),
                    SizedBox(height: 10,),
                    Text('Chenab Bridge: Located in Jammu and Kashmir, '
                        'it is one of the highest rail bridges in the world, spanning the Chenab River at a height of 359 meters.'),
                  ],
                ),
              ),Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/pamban bridge.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Pamban Bridge',
                            //     style: TextStyle(
                            //   height: 20,
                            //
                            // ),
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),]

                    ),
                    SizedBox(height: 10,),
                    Text('Pamban Bridge: It connects the mainland with Rameswaram Island in Tamil Nadu.'
                        ' This historic railway bridge is famous for its double-leaf bascule design, allowing ships to pass through.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/bogibeel bridges.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Bogibeel Bridge',
                            //     style: TextStyle(
                            //   height: 20,
                            //
                            // ),
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),]

                    ),
                    SizedBox(height: 10,),
                    Text('Bogibeel Bridge: It is a rail-road bridge over the '
                        'Brahmaputra River in Assam, serving as an important link between Dibrugarh and Dhemaji districts.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/vembanand bridges.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Vembanad Rail Bridge',
                            //     style: TextStyle(
                            //   height: 20,
                            //
                            // ),
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),]

                    ),
                    SizedBox(height: 10,),
                    Text('Vembanad Rail Bridge: This railway bridge in'
                        ' Kerala extends over the Vembanad Lake, making it the longest rail bridge in India at a length of 4.62 km.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/dudhsagar fall bridges.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Dudhsagar Falls Railway Bridge',
                            //     style: TextStyle(
                            //   height: 20,
                            //
                            // ),
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),]

                    ),
                    SizedBox(height: 10,),
                    Text('Dudhsagar Falls Railway Bridge: Located in Goa, '
                        'this picturesque railway bridge passes right in front of the magnificent '
                        'Dudhsagar Falls, offering a spectacular view.'),
                  ],
                ),
              ),
              // Card(
              //   child: Column(
              //     children: [
              //       Stack(
              //           alignment: Alignment.bottomLeft,
              //           children: [
              //             Image(image: AssetImage('assets/images/jaipur.jpg'),height:500,fit: BoxFit.cover,),
              //             Text('Mandapam Railway Bridge',
              //               //     style: TextStyle(
              //               //   height: 20,
              //               //
              //               // ),
              //               softWrap: true,
              //               style: TextStyle(
              //                   fontSize: 30,
              //                   fontWeight: FontWeight.bold
              //               ),),]
              //
              //       ),
              //       SizedBox(height: 10,),
              //       Text('Mandapam Railway Bridge: It is a railway bridge in Tamil Nadu that '
              //           'connects the Indian mainland with the island of Pamban.'),
              //     ],
              //   ),
              // ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/nagpur.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Chambal Expressway Rail Bridge',
                            //     style: TextStyle(
                            //   height: 20,
                            //
                            // ),
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),]

                    ),
                    SizedBox(height: 10,),
                    Text('Chambal Expressway Rail Bridge: Located in Madhya Pradesh'
                        ', it is the longest rail bridge on the Chambal River and a part of the dedicated freight corridor.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/kollam.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Pamban Sea Bridge',
                            //     style: TextStyle(
                            //   height: 20,
                            //
                            // ),
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),]

                    ),
                    SizedBox(height: 10,),
                    Text('Pamban Sea Bridge: Also known as the Annai Indira Gandhi Bridge, '
                        'it is a railway bridge that spans the Palk Strait and connects Rameswaram Island to the mainland.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/pir panjal tunnel.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Pir Panjal Railway Tunnel',
                            //     style: TextStyle(
                            //   height: 20,
                            //
                            // ),
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),]

                    ),
                    SizedBox(height: 10,),
                    Text('Pir Panjal Railway Tunnel: Situated in Jammu and Kashmir, it is the longest '
                        'railway tunnel in India, with a length of over 11 km, forming a vital part of the'
                        ' Udhampur-Srinagar-Baramulla rail link.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/karbude tunnel.jpg'),height: 500,fit: BoxFit.fitHeight,),
                          Text('Karbude Tunnel',
                            //     style: TextStyle(
                            //   height: 20,
                            //
                            // ),
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),]

                    ),
                    SizedBox(height: 10,),
                    Text('Karbude Tunnel: Located on the Konkan Railway line, it is India''s '
                        'longest railway tunnel, stretching for about 6.5 km in Maharashtra.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/tike tunnel.jpg'),height: 500,fit: BoxFit.fitHeight,),
                          Text('Tike Tunnel',
                            //     style: TextStyle(
                            //   height: 20,
                            //
                            // ),
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),]

                    ),
                    SizedBox(height: 10,),
                    Text('Tike Tunnel: Situated on the Konkan Railway, it is the '
                        'second-longest railway tunnel in India, measuring approximately 4.5km'),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
