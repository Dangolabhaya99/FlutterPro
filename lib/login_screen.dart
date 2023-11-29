import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trendtrove/home_screen.dart';
import 'package:trendtrove/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
TextStyle myStyle = TextStyle(fontSize: 25);
class _LoginScreenState extends State<LoginScreen>{
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (val){
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Username",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)
          )
      ),
    );
    

    final passwordField = TextField(
      onChanged: (val){
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)
          )
      ),
    );

    final mySigninButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.deepPurple,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          onPressed: () {
            if(username == "Abhaya" && password =="pass123") {
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => HomeScreen()));
            }else{
              print("Login Failed");
            }
            },
          child: Text('Login', style: TextStyle(color: Colors.white,fontSize: 25),),
        )
    );
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.deepPurple,
                Colors.red,
              ],
            )
          ),
          child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Icon(Icons.supervised_user_circle, size: 100,),
                      SizedBox(height: 150),
                      usernameField,
                      SizedBox(height: 10),
                      passwordField,
                      SizedBox(height: 10,),
                      mySigninButton,
                      SizedBox(height: 10,),
                      Icon(FontAwesomeIcons.google),
                      SizedBox(height: 100,),
                      Text("Don't Have Account?", style: TextStyle(color: Colors.black,fontSize: 15),),
                      GestureDetector(
                        onTap: (){
                           Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                        },
                          child: Text('Sign Up', style: TextStyle(color: Colors.deepOrange,fontSize: 20),))
                    ],
                  ),
                ],
              )
          ),
        ),
      ),

    );
  }
}
