import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserPage(),
    );
  }
}

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _ageController;
  late TextEditingController _emailController;

  late Future<Map<String, dynamic>> _userDataFuture;

  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _ageController = TextEditingController();
    _emailController = TextEditingController();

    _userDataFuture = getUserData();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  Future<Map<String, dynamic>> getUserData() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        String userId = user.uid;

        DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .get();

        var userData = snapshot.data();
        return userData ?? {};
      }
    } catch (e) {
      print('Error retrieving user data: $e');
    }
    return {};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _userDataFuture,
        builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            var userData = snapshot.data!;
            _firstNameController.text = userData['first name'] ?? '';
            _lastNameController.text = userData['last name'] ?? '';
            _ageController.text = userData['age']?.toString() ?? '';
            _emailController.text = userData['email'] ?? '';

            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _firstNameController,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                  TextField(
                    controller: _lastNameController,
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                  TextField(
                    controller: _ageController,
                    decoration: InputDecoration(
                      labelText: 'Age',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
            );
          } else {
            return Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}




// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:trainappfinal/pages/safety.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:trainappfinal/pages/textbox.dart';
//
//
// import 'feedback.dart';
// import 'heritage.dart';
// import 'home_page.dart';
//
// class UserPage extends StatefulWidget {
//   @override
//   State<UserPage> createState() => _UserPageState();
// }
//
// class _UserPageState extends State<UserPage> {
//   final currentUser=FirebaseAuth.instance.currentUser!;
//   Future<void> editField(String field)async{
//
//   }
//   final userCollection = FirebaseFirestore.instance.collection("users");
//
//   late final String uid;
//   Future<DocumentSnapshot<Map<String, dynamic>>> getUserData() async {
//     User? user = FirebaseAuth.instance.currentUser;
//     DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
//         .collection('users')
//         .doc(user?.uid)
//         .get();
//     return snapshot;
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('User Page'),
//       // ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
//             children: [
//
//
//               Container(
//                 margin: EdgeInsets.only(left: 10, top: 27),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         spreadRadius: 0,
//                         blurRadius: 30,
//                         color: Colors.grey.shade900,
//                         blurStyle: BlurStyle.solid,
//                         // offset:Offset(10, 10)
//                       )
//                     ]
//                 ),
//                 padding: EdgeInsets.zero,
//                 child:
//                 SizedBox(width: 200,
//                   height: 80,
//                   child: Image.asset(
//                     'assets/images/logo (2).png', fit: BoxFit.cover,
//                     // Text('hello ',
//                     // style: TextStyle(
//                     //   color: Colors.red,
//                     //   fontSize: 50
//                   ),
//                 ),
//               ),
//
//               // Container(decoration: BoxDecoration(
//               //   shape: BoxShape.circle,
//               //     color: Colors.yellow
//               // ),padding:EdgeInsets.all(10),
//               //     child: Icon(Icons.settings,color: Colors.blueAccent,)),
//               InkWell(
//                 child: Container(
//                     margin: EdgeInsets.only(top: 30, right: 10),
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.deepPurple,
//                             blurRadius: 30,
//                             blurStyle: BlurStyle.solid,
//
//                           )
//                         ],
//                         shape: BoxShape.circle,
//                         color: Colors.white
//                     ),
//                     padding: EdgeInsets.all(15),
//                     child: Icon(
//                       Icons.person, color: Colors.deepPurple, size: 40,)),
//
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => UserPage()));
//                 },),
//               // Container(
//               //     decoration: BoxDecoration(
//               //       shape: BoxShape.circle,
//               //         color: Colors.yellow
//               //     ),padding:EdgeInsets.zero,
//               //     child: IconButton(onPressed: null , icon: Icon(Icons.home_filled,color: Colors.blueAccent,)))
//             ],
//           ),
//           Container(
//             child: Column(
//                 children: [
//                   const SizedBox(height: 2,),
//                   const Icon(
//                     Icons.person,
//                     size: 72,
//                   ),
//                   // const SizedBox(height: 30,),
//                   // Padding(
//                   //   padding: const EdgeInsets.only(left: 25, right: 250),
//                   //   child: Text(
//                   //     'User Page',
//                   //     style: TextStyle(fontSize: 24.0),
//                   //   ),
//                   // ),
//
//                   Padding(
//                     padding: const EdgeInsets.all(0),
//                     child: Center(
//                       child: Text(
//                         'User Page',
//                         style: TextStyle(fontSize: 24.0,),
//                       ),
//                     ),
//                   ),
//
//
//                   const SizedBox(height: 20,),
//                   MyTextBox(text: "divyanshu", sectionName: "FirstName",onPressed:()=> editField('Firstname') ,),
//                   const SizedBox(height: 20,),
//                   MyTextBox(text: "Chaudhary", sectionName: "LastName",onPressed:()=> editField('LastName') ,),
//                   const SizedBox(height: 20,),
//                   MyTextBox(text: "divyanshu", sectionName: "Age",onPressed:()=> editField('Age') ,),
//                   const SizedBox(height: 20,),
//                   MyTextBox(text: "divyanshu", sectionName: "Location",onPressed:()=> editField('Location') ,),
//                 ]
//
//             ),
//           ),
//           Container(
//             child: Row(
//
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
//               children: [
//
//
//                 InkWell(
//                   child: Container(padding: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.deepOrangeAccent,
//                               blurRadius: 20,
//                               blurStyle: BlurStyle.solid
//                           )
//
//                         ],
//                         shape: BoxShape.circle
//
//
//                     ),
//                     child: Icon(Icons.home_outlined, size: 55,
//                       color: Colors.deepOrangeAccent,),),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => HomePage()));
//                   },
//                 ),
//                 InkWell(
//                   child: Container(padding: EdgeInsets.all(10),
//
//                     child: Icon(Icons.account_balance_outlined, size: 50,
//                       color: Colors.deepOrangeAccent,),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//
//                       boxShadow: [
//                         BoxShadow(
//                             color: Colors.deepOrangeAccent,
//                             blurRadius: 20,
//                             blurStyle: BlurStyle.solid
//                         )
//
//                       ],
//                       shape: BoxShape.circle,
//                     ),),
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(
//                         builder: (context) => HeritagePage()));
//                   },
//                 ),
//                 InkWell(
//                   child: Container(
//                     padding: EdgeInsets.all(10),
//                     child: Icon(
//                       Icons.train, size: 50, color: Colors.deepOrangeAccent,),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.deepOrangeAccent,
//                               blurRadius: 20,
//                               blurStyle: BlurStyle.solid
//                           )
//
//                         ],
//                         shape: BoxShape.circle
//
//
//                     ),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => SafetyPage()));
//                   },
//                 ),
//                 InkWell(
//                   child: Container(padding: EdgeInsets.all(10),
//                     child:
//                     Icon(Icons.contact_support_outlined, size: 50,
//                       color: Colors.deepOrangeAccent,),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.deepOrangeAccent,
//                               blurRadius: 20,
//                               blurStyle: BlurStyle.solid
//                           )
//
//                         ],
//                         shape: BoxShape.circle
//
//
//                     ),),
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(
//                         builder: (context) => FeedbackPage()));
//                   },
//                 )
//               ],
//
//             ),
//
//           )
//         ],
//       ),
//     );
//
//   }
// }