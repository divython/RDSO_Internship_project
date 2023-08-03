import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:trainappfinal/pages/home_page.dart';
import 'signup.dart';
// void main(){
//   runApp(signup());
// }

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signupState();
}

class _signupState extends State<signIn> {
  TextEditingController _passwordTextController=TextEditingController();
  TextEditingController _emailTextController=TextEditingController();
  TextEditingController _firstNameTextController=TextEditingController();
  TextEditingController _lastNameTextController=TextEditingController();
  TextEditingController _ageTextController=TextEditingController();
  TextEditingController _locationTextController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                CupertinoColors.activeBlue,
                Colors.deepPurple,
                Colors.pinkAccent
              ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, MediaQuery
                  .of(context)
                  .size
                  .height * 0.2, 20, 0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(100,6,10,0),
                        child: GradientText('PASSENGER AWARENESS',
                          style: TextStyle(
                              fontSize: 33,fontWeight: FontWeight.w900),
                          colors: [
                            Colors.black,
                            // Colors.pink,
                            Colors.purple
                          ],
                        ),
                      ),
                    )
                    ,
                  ),
                  logoWidget('assets/images/logo (1).png'),
                  SizedBox(height: 30,),
                  reusableTextField("Enter Email", Icons.person_outline, false,
                      _emailTextController),
                  SizedBox(height: 30,),
                  reusableTextField("Enter Password", Icons.lock_outline, true,
                      _passwordTextController),
                  SizedBox(height: 30,),
                  signInSignUpButton(context, true, () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text)
                        .then((value){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      }).onError((error, stackTrace){
                        if (kDebugMode) {
                          print("Error ${error.toString()}");
                        }

                    });
                  }),
                  singUpOption()
                  

                ],
              ),),
          ),
        ),

      ),

    );
  }
  Row singUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have Account?",
        style: TextStyle(
          color: Colors.white70
        ),),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
          },
          child: const Text(" Sign Up",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        )
      ],
    );
  }
    Image logoWidget(String imageName) {
      return Image.asset(imageName, fit: BoxFit.fitWidth,
        width: 240,
        height: 240,
        color: Colors.white,);
    }
    TextField reusableTextField(String text, IconData icon, bool isPasswordType,
        TextEditingController controller) {
      return TextField(
        controller: controller,
        obscureText: isPasswordType,
        enableSuggestions: !isPasswordType,
        autocorrect: !isPasswordType,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white.withOpacity(0.9)),
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white70,
          ),
          labelText: text,
          labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Colors.white.withOpacity(0.3),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
        ),
        keyboardType: isPasswordType
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,

      );

    }
    Container signInSignUpButton(
        BuildContext context,bool isLogin, Function onTap){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
        child: ElevatedButton(
          onPressed: (){
            onTap();
          },
          child: Text(
            isLogin ? 'LOG IN':'SIGN UP',
            style: const TextStyle(
              color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 16),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)){
                return Colors.black26;
              }
              return Colors.white;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
            )
          ),
        ),

      );
    }


}
