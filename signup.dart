// import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signin.dart';
import 'customWidgets.dart';
import 'main.dart';
import 'home_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _firstNameTextController = TextEditingController();
  TextEditingController _lastNameTextController = TextEditingController();
  TextEditingController _ageTextController = TextEditingController();
  TextEditingController _locationTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "Sign Up",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                CupertinoColors.activeBlue,
                Colors.deepPurple,
                // Colors.deepOrangeAccent,
                // Colors.deepPurple,
                Colors.pinkAccent
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(
                  children: <Widget>[
                    // SizedBox(height: 20,),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter firstname", Icons.person_outline,
                        false, _firstNameTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Lastname", Icons.person_outline,
                        false, _lastNameTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Age", Icons.person_outline, false,
                        _ageTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter location", Icons.person_outline,
                        false, _locationTextController),
                    // reusableTextField("Enter Username", Icons.person_outline, false,
                    //     _userNameTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Email", Icons.lock_outline, false,
                        _emailTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Password", Icons.lock_outline,
                        true, _passwordTextController),
                    SizedBox(
                      height: 20,
                    ),
                    signInSignUpButton(context, false, () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _emailTextController.text,
                              password: _passwordTextController.text)
                          .then((value) {
                        print("Created New Account");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                      Future addUserDetails(String firstName, String lastName,
                          String email, int age) async {
                        await FirebaseFirestore.instance
                            .collection('users')
                            .add({
                          'first name': firstName,
                          'last name': lastName,
                          'email': email,
                          'age': age,
                        });
                      }

                      ;
                      // addUserDetails(
                      //     _firstNameTextController.text,
                      //     _lastNameTextController.text,
                      //     _emailTextController.text,
                      //     int.parse(_ageTextController.text,)
                      // );
                      // FirebaseFirestore.instance
                      // .collection('users')
                      // .doc(user!.email)
                      // .set({
                      //   'username': _emailTextController.text
                      // });
                    }),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

// import 'package:trainappfinal/pages/validator.dart';
//
// class LoginPage extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();
//   Future<FirebaseApp> _initializeFirebase() async {
//     FirebaseApp firebaseApp = await Firebase.initializeApp();
//     return firebaseApp;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Firebase Authentication'),
//       ),
//       body: FutureBuilder(
//         future: _initializeFirebase(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return Column(
//               children: [
//                 Text('Login'),
//                 Form(
//                   key: _formKey,
//                   child: Column(
//                     children: <Widget>[
//                       // Add widgets
//                     ],
//                   ),
//                 ),
//                 Form(
//                   key: _formKey,
//                   child: Column(
//                     children: <Widget>[
//                       TextFormField(
//                         controller: _emailTextController,
//                         focusNode: _focusEmail,
//                         validator: (value) => Validator.validateEmail(email: value),
//                       ),
//                       SizedBox(height: 8.0),
//                       TextFormField(
//                         controller: _passwordTextController,
//                         focusNode: _focusPassword,
//                         obscureText: true,
//                         validator: (value) => Validator.validatePassword(password: value),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             );
//           }
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }
