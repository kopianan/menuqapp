import 'package:feroza/presentation/components/default_button.dart';
import 'package:feroza/util/menuq_color.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text("Daftar"),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset.fromDirection(900)),
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/images/menuq_logo.png'))),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Welcome to",
                style: TextStyle(fontSize: 30, color: kBlackColor),
              ),
              Text(
                "Menuq",
                style: TextStyle(fontSize: 30, color: kPrimaryColor),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(fontSize: 14),
                decoration: InputDecoration(hintText: "Nama"),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                style: TextStyle(fontSize: 14),
                decoration: InputDecoration(hintText: "Email / username"),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(fontSize: 14),
                decoration: InputDecoration(hintText: "Nomor Whatsapp"),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(fontSize: 14),
                decoration: InputDecoration(hintText: "Password"),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(fontSize: 14),
                decoration: InputDecoration(hintText: "Konfirmasi Password"),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              DefaultButton(
                text: "Sign Up",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
