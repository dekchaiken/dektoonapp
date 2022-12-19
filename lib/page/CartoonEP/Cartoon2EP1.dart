import 'package:dektoonapp/category.dart';
import 'package:dektoonapp/fav.dart';
import 'package:dektoonapp/index.dart';
import 'package:dektoonapp/login.dart';
import 'package:dektoonapp/page/cartoonnew1.dart';
import 'package:dektoonapp/page/cartoonnew2.dart';
import 'package:dektoonapp/profile.dart';
import 'package:flutter/material.dart';
import 'package:dektoonapp/page/settings.dart';
import 'package:dektoonapp/category.dart';

class CartoonID2EP1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setup Profile",
      home: CTID2EP1(),
    );
  }
}

class CTID2EP1 extends StatefulWidget {
  @override
  _CartoonID2EP1State createState() => _CartoonID2EP1State();
}

class _CartoonID2EP1State extends State<CTID2EP1> {
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
                        padding: EdgeInsets.only(left: 150, top: 5),
                        child: IconButton(
                          icon: Icon(
                            Icons.cancel,
                            color: Color.fromARGB(255, 255, 0, 0),
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Cartoonnew2()));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 15,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/CartoonEP/ID2/EP1/1.png',
                    height: 350,
                    width: 350,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    height: 350,
                    width: 350,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    height: 350,
                    width: 350,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    height: 350,
                    width: 350,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    height: 350,
                    width: 350,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    height: 350,
                    width: 350,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    height: 350,
                    width: 350,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    height: 350,
                    width: 350,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    height: 350,
                    width: 350,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 15,
                thickness: 2,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 150, top: 5),
                        child: IconButton(
                          icon: Icon(
                            Icons.cancel,
                            color: Color.fromARGB(255, 255, 0, 0),
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Cartoonnew2()));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
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
