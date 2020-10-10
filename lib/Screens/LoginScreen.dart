import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [
              Color(0xFF73a942),
              Color(0xFFaad576),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.0),
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Lottie.asset('assets/LoginScreen.json'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 300,
              child: Card(
                color: Colors.white,
                elevation: 50,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ListView(
                    children: [
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.phone,
                            color: Colors.black,
                            size: 22.0,
                          ),
                          hintText: "Phone",
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                            size: 22.0,
                          ),
                          hintText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        color: Colors.green,
                        onPressed: () {},
                        child: Text('Login'),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
