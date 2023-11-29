import 'package:flutter/material.dart';
import 'package:trendtrove/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}
TextStyle myStyle = TextStyle(fontSize: 25);
class _RegisterScreenState extends State<RegisterScreen>{
  late String username;
  late String password;
  late String email;
  late String conpassword;

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

    final emailField = TextField(
      onChanged: (val){
        setState(() {
          email = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Email",
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

    final conpasswordField = TextField(
      onChanged: (val){
        setState(() {
          conpassword = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Conform Password",
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
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
          },
          child: Text('Sign In', style: TextStyle(color: Colors.white,fontSize: 25),),
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
                      emailField,
                      SizedBox(height: 10),
                      passwordField,
                      SizedBox(height: 10),
                      conpasswordField,
                      SizedBox(height: 10,),
                      mySigninButton,
                      SizedBox(height: 10,),
                      Text('Already Have an Account', style: TextStyle(color: Colors.black,fontSize: 20),),
                      GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                          },
                          child: Text('Login', style: TextStyle(color: Colors.deepOrange,fontSize: 25),))
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