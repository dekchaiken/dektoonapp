import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:dektoonapp/register.dart';
import 'main.dart';

class MyLogin extends StatefulWidget {
  static var title;

  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login_1.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 120, top: 180),
              child: Text(
                'Dek-',
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 195, top: 180),
              child: Text(
                'Toon',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 0), fontSize: 40),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 155, top: 225),
              child: Text(
                'Sign in to start',
                style: TextStyle(
                    color: Color.fromARGB(255, 88, 88, 88), fontSize: 14),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  height: 190,
                )
              ],
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35, top: 70),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            decoration: InputDecoration(
                              hintText: "Username",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyRegister()));
                                  },
                                  child: Container(
                                    width: 305,
                                    height: 45,
                                    child: Material(
                                      color: const Color(0xFF1DABF0),
                                      borderRadius: BorderRadius.circular(15),
                                      child: const Center(
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 0, top: 0),
                            child: Text(
                              "You don't have an account ?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 14),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyRegister()));
                                  },
                                  child: Container(
                                    width: 305,
                                    height: 45,
                                    child: Material(
                                      color: const Color(0xFF1DABF0),
                                      borderRadius: BorderRadius.circular(15),
                                      child: const Center(
                                        child: Text(
                                          "Sing Up",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
