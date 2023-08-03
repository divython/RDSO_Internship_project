import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class railines extends StatelessWidget {
  const railines({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('RAIL LINES',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87),),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
      ),

      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              CupertinoColors.white,
              //Colors.grey,
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
                          Image(image: AssetImage('assets/images/konkanrailway.jpg'),height:500,fit: BoxFit.cover,),
                          Text('Konkan Railway',
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
                    Text('Konkan Railway: This scenic route stretches along the Western Ghats, '
                        'connecting Mumbai in Maharashtra to Mangalore in Karnataka, '
                        'covering a distance of 741 km.'),
                  ],
                ),
              ),Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/matheran rail lines.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Matheran Hill Railway',
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
                    Text('Matheran Hill Railway: Located in Maharashtra, '
                        'this narrow-gauge railway is famous for being the smallest and only heritage hill railway in India.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/darjeeling himalayan railway.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Darjeeling Himalayan Railway',
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
                    Text('Darjeeling Himalayan Railway: Also known as the "Toy Train," it winds through the picturesque '
                        'tea gardens and hills of Darjeeling in West Bengal, offering breathtaking views.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/nilgiri mountain railway.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Nilgiri Mountain Railway',
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
                    Text('Nilgiri Mountain Railway: This UNESCO World Heritage Site connects Mettupalayam to Ooty in Tamil Nadu. '
                        'The train chugs through the Nilgiri Hills, passing through tunnels and across bridges.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/kalka shimla railway.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Kalka-Shimla Railway',
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
                    Text('Kalka-Shimla Railway: This narrow-gauge railway in '
                        'Himachal Pradesh passes through a stunning landscape of '
                        'mountains and valleys, offering scenic views of the Himalayas.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/jaishelmer railline.jpg'),height:500,fit: BoxFit.cover,),
                          Text('Jaisalmer–Sam Rail Line',
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
                    Text('Jaisalmer–Sam Rail Line: This picturesque rail line connects Jaisalmer, '
                        'known for its majestic fort, to the Sam Sand Dunes in the Thar Desert of Rajasthan.'),
                  ],
                ),
              ),
              // Card(
              //   child: Column(
              //     children: [
              //       Stack(
              //           alignment: Alignment.bottomLeft,
              //           children: [
              //             Image(image: AssetImage('assets/images/pic6.jpg'),height:500,fit: BoxFit.fitHeight,),
              //             Text('Bhavnagar-Rajkot Railway Line',
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
              //       Text('Bhavnagar-Rajkot Railway Line: Known as the "Roller Coaster Railways," '
              //           'this line in Gujarat features extreme gradient changes and is a thrilling ride for passengers.'),
              //     ],
              //   ),
              // ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/bilaspur manali railline.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Bilaspur-Manali-Leh Railway Line',
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
                    Text('Bilaspur-Manali-Leh Railway Line: Proposed as one of the highest railway lines in the world, '
                        'this project aims to connect Bilaspur in Himachal Pradesh to Leh in Ladakh.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/ooty rail line.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Mettupalayam-Ooty Rack Railway',
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
                    Text('Mettupalayam-Ooty Rack Railway: Also known as the "Mountain Railways of India," '
                        'this section in Tamil Nadu employs a unique rack-and-pinion system to negotiate steep gradients.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/jatinga railines.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Jatinga-Byrnihat Railway Line:',
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
                    Text('Jatinga-Byrnihat Railway Line: Proposed as India''s first "green railway line," '
                        'this project in Meghalaya aims to be completely solar-powered.'),
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
