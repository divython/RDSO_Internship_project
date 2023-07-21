import 'package:flutter/material.dart';
void main(){
  runApp(newwapp());
}
class newwapp extends StatelessWidget {
  const newwapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('title')
        ),

        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(decoration: BoxDecoration(color: Colors.blue),
                  child: Text("hjscvhjgdvhdbvsjvdb\nkjlvbnvdsbjvhdgjdvsbld\nvskjbdvskjlgbdvkjghefjkbegwiule\nfhkjvdbkj",
                  style: TextStyle(color: Colors.red,fontSize: 40,fontWeight: FontWeight.bold),)),
              Container(decoration: BoxDecoration(color: Colors.blue),
                  child: Text("hjscvhjgdvhdbvsjvdb\nkjlvbnvdsbjvhdgjdvsbld\nvskjbdvskjlgbdvkjghefjkbegwiule\nfhkjvdbkj",
                    style: TextStyle(color: Colors.red,fontSize: 40,fontWeight: FontWeight.bold),)),
              Padding(
                padding: const EdgeInsets.only(left: 78.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Container(
                          child:
                          Image.asset('assets/images/logo (1).png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Container(
                          child:
                          Image.asset('assets/images/logo (1).png'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ),
        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(icon:Icon(Icons.settings),
        //
        //   //       icon: Icon(Icons.home_filled),
        //   //       label: 'Home',
        //   //     ),
        //
        //   ),BottomNavigationBarItem(icon:Icon(Icons.settings))],),
      ),
    );
  }
}
