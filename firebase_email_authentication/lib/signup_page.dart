import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_email_authentication/app_UI.dart';
import 'package:firebase_email_authentication/home_page.dart';
import 'package:firebase_email_authentication/login_page.dart';
import 'package:flutter/material.dart';

class Signup_Page extends StatelessWidget {
  const Signup_Page({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();

    signUp(String email, String pass) async {
      if (email == "" && pass == "") {
        UI_Helper().custom_Alert_Dialog(context, "Empty Values",
            "Please enter email and password to Signup");
      } else {
        UserCredential? userCredential;
        try {
          userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(email: email, password: pass)
              .then((value) => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Home_Page())));
        } on FirebaseAuthException catch (ex) {
          print(ex);
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Signup Page')),
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
                  signUp(email.text.toString(), pass.text.toString());
                },
                child: Text('Sign up'),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login_Page()));
                },
                child: Text('Login Page', style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
