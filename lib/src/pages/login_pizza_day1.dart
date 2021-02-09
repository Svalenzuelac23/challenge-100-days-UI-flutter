import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPizzaDay1 extends StatelessWidget {
  const LoginPizzaDay1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFFFB800),
      body: Stack(
        children: [
          Positioned(
              top: 40,
              right: 0,
              child: Stack(
                children: [
                  Opacity(
                      opacity: 0.5,
                      child: Image.asset("assets/img/Pizza.png",
                          scale: 1.1, color: Colors.black)),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                      child: Image.asset("assets/img/Pizza.png",
                          scale: 1.1, color: Colors.grey),
                    ),
                  )
                ],
              )),
          Positioned(
              top: 40,
              right: 0,
              child: Image.asset(
                "assets/img/Pizza.png",
                scale: 1.1,
              )),
          Positioned(
              top: 80,
              left: 23,
              child: Text(
                'Fast.\nDelicious.',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )),
          Positioned(
              bottom: 0,
              child: Container(
                child: _login(_screen),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(49.0),
                      topRight: Radius.circular(49.0)),
                  color: Colors.white,
                ),
                height: 570,
                width: _screen.width,
              ))
        ],
      ),
    );
  }

  Widget _login(Size _screen) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 4.0,
                  width: 130.0,
                  color: Colors.grey,
                ),
              )),
          Container(
            //margin: EdgeInsets.all(25.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 45.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign-up',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _iconButtom(Image.asset(
                'assets/img/Google-1.png',
                scale: 4,
              )),
              SizedBox(
                width: 30.0,
              ),
              _iconButtom(Image.asset(
                'assets/img/Apple.png',
                scale: 4,
              )),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Color(0xFFE2E2E2),
                width: _screen.width * 0.38,
                height: 1,
              ),
              Text(
                'or',
                style: TextStyle(color: Colors.grey),
              ),
              Container(
                color: Color(0xFFE2E2E2),
                width: _screen.width * 0.38,
                height: 1,
              ),
            ],
          ),
          _textField(
            'Name',
            'Insert your name here',
            Image.asset('assets/img/check.png'),
          ),
          _textField(
            'Email',
            'Insert your email here',
            Image.asset('assets/img/arroba.png'),
          ),
          _textField(
            'Password',
            'Create your password',
            Image.asset('assets/img/candado.png'),
            isPassword: true,
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              child: Center(
                  child: Text(
                'Create your account',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.5),
              )),
              decoration: BoxDecoration(
                  color: Color(0xFFFFB800),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFFB800),
                      blurRadius: 12,
                    )
                  ]),
              width: _screen.width,
              height: 50,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: false,
                  onChanged: null,
                ),
                Flexible(
                  child: Text(
                    'Ive read and agree with Terms of service and our Privacy Policy',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _iconButtom(Image image) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
            width: 52,
            height: 52,
            child: image,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 1.5, blurRadius: 5, color: Colors.black12)
                ])),
      ),
    );
  }

  _textField(String name, String helpText, Widget image,
      {bool isPassword = false}) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      //height: 100.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 9.0,
          ),
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.grey,
                fontSize: 14.0),
          ),
          SizedBox(
            height: 12.0,
          ),
          TextField(
            obscureText: isPassword,
            cursorHeight: 20,
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
                hintText: helpText,
                hintStyle: TextStyle(
                    color: Color(0xFFE2E2E2),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
                suffixIcon: image,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.grey, width: 0.75),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.grey, width: 0.75))),
          ),
        ],
      ),
    );
  }
}
