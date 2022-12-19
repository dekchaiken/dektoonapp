import 'package:dektoonapp/category.dart';
import 'package:dektoonapp/fav.dart';
import 'package:dektoonapp/index.dart';
import 'package:dektoonapp/login.dart';
import 'package:dektoonapp/page/cartoonnew2.dart';
import 'package:dektoonapp/profile.dart';
import 'package:flutter/material.dart';
import 'package:dektoonapp/page/settings.dart';
import 'package:dektoonapp/category.dart';

class AllCartoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setup Profile",
      home: Allcartoon(),
    );
  }
}

class Allcartoon extends StatefulWidget {
  @override
  _AllcartoonState createState() => _AllcartoonState();
}

class _AllcartoonState extends State<Allcartoon> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 10, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png",
                                ))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 0, top: 10),
                        child: Text(
                          'Member',
                          style: TextStyle(
                              color: Color.fromARGB(255, 128, 128, 128),
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Warapon Ledlum',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 125, top: 5),
                        child: IconButton(
                          icon: Icon(
                            Icons.cancel,
                            color: Color.fromARGB(255, 255, 0, 0),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    IndexPage()));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 250, top: 10),
                    child: Text(
                      'All Cartoon',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Image.asset('assets/one.png',
                        width: 150, height: 150, fit: BoxFit.fill),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => IndexPage()));
                    },
                  ),
                  Text("Kaiju No.8",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 20)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Image.asset('assets/two.png',
                        width: 150, height: 150, fit: BoxFit.fill),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Cartoonnew2()));
                    },
                  ),
                  Text("Solo Leveling",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Image.asset('assets/three.png',
                        width: 150, height: 150, fit: BoxFit.fill),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => IndexPage()));
                    },
                  ),
                  Text("One Piece",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 20)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Image.asset('assets/four.png',
                        width: 150, height: 150, fit: BoxFit.fill),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => IndexPage()));
                    },
                  ),
                  Text("Solo \nMax-Level\n Newbie",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 17)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Image.asset('assets/five.png',
                        width: 150, height: 150, fit: BoxFit.fill),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => IndexPage()));
                    },
                  ),
                  Text("God-level\nContract Start\nWith a Cat",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Image.asset('assets/logo.png',
                        width: 150, height: 150, fit: BoxFit.fill),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => IndexPage()));
                    },
                  ),
                  Text("Dek-Toon",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 20)),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
