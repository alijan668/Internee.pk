import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_email_authentication/app_UI.dart';
import 'package:firebase_email_authentication/home_page.dart';
import 'package:firebase_email_authentication/signup_page.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();

    SignIn(String email, String pass) async {
      if (email == "" && pass == "") {
        UI_Helper().custom_Alert_Dialog(
            context, "Empty Values", "Please enter your credientials to login");
      } else {
        UserCredential? userCredential;
        try {
          userCredential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: pass)
              .then((value) => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Home_Page())));
        } on FirebaseAuthException catch (ex) {
          UI_Helper()
              .custom_Alert_Dialog(context, "Login Failed", ex.toString());
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login Page')),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 100,
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  SignIn(email.text.toString(), pass.text.toString());
                },
                child: Text('Login'),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Signup_Page()));
                },
                child:
                    Text('Signup Page', style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
