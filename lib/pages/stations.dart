import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class stations extends StatelessWidget {
  const stations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('STATIONS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87),),
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
                          Image(image: AssetImage('assets/images/cst terminal.jpg'),height:500,fit: BoxFit.cover,),
                          Text('Chhatrapati Shivaji Terminus (CST)',
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
                    Text('Chhatrapati Shivaji Terminus (CST), Mumbai: Formerly known as Victoria Terminus, CST is a UNESCO World Heritage Site and an iconic symbol of Mumbai. '
                        'It combines Victorian Gothic architecture with Indian influences, creating a stunning fusion of styles.'),
                  ],
                ),
              ),Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/howrah junction.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Howrah Junction, Kolkata',
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
                    Text('Howrah Junction, Kolkata: Howrah Junction is one of the oldest and busiest railway stations'
                        ' in India. Its architectural style reflects the colonial era, with a grand facade and a large dome..'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/charbagh.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Charbagh Railway Station, Lucknow',
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
                    Text('Charbagh Railway Station, Lucknow: Charbagh Station in Lucknow is known for its magnificent architectural design, '
                        'inspired by Indo-Saracenic and Mughal styles. It features ornate domes, minarets, and beautiful gardens.'),
                  ],
                ),
              ),
              // Card(
              //   child: Column(
              //     children: [
              //       Stack(
              //           alignment: Alignment.bottomLeft,
              //           children: [
              //             Image(image: AssetImage('assets/images/nilgiri mountain railway.jpg'),height:500,fit: BoxFit.fitHeight,),
              //             Text('Victoria Terminus (VT), Chennai',
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
              //       Text('Victoria Terminus (VT), Chennai: Victoria Terminus in Chennai is a fine example of British colonial architecture. It features a '
              //           'grand entrance, high ceilings, and elaborate detailing, reflecting the architectural trends of the time.'),
              //     ],
              //   ),
              // ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/mysore.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Mysore Railway Station',
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
                    Text('Mysore Railway Station, Mysore: Mysore Railway Station is known '
                        'for its beautiful architectural elements, including intricately '
                        'carved wooden pillars, arches, and a stunning facade.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/jaipur.jpg'),height:500,fit: BoxFit.cover,),
                          Text('Jaipur Junction, Jaipur',
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
                    Text('Jaipur Junction, Jaipur: Jaipur Junction is notable for its pink facade, reflecting the'
                        ' color for which the city is known. It showcases a blend of traditional Rajasthani and Mughal architectural styles.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/nagpur.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Nagpur Junction, Nagpur',
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
                    Text('Nagpur Junction, Nagpur: Nagpur'
                        ' Junction is famous for its unique octagonal shape, '
                        'which is a blend of modern and traditional architectural elements.'),
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
                          Text('Kollam Junction, Kollam',
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
                    Text('Kollam Junction, Kollam: Kollam Junction is '
                        'renowned for its distinctive structure, featuring a'
                        ' conical-shaped roof with traditional Kerala architectural elements.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/chennai central.jpg'),height:500,fit: BoxFit.fitHeight,),
                          Text('Chennai Central, Chennai',
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
                    Text('Chennai Central, Chennai: Chennai Central is one of the oldest and busiest railway stations in South India. '
                        'Its grand facade and imposing structure make it a prominent landmark in the city.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image(image: AssetImage('assets/images/secunderabad.jpg'),height: 500,fit: BoxFit.fitHeight,),
                          Text('Secunderabad Junction, Hyderabad',
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
                    Text('Secunderabad Junction, Hyderabad: Secunderabad Junction showcases a mix of '
                        'British and Nizam architectural styles. Its impressive facade and clock tower add to its charm.'),
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
