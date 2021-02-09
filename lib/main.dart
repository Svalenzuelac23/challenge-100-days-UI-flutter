import 'package:examples_flutter/src/pages/login_pizza_day1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MenuPage(),
        'LoginPizzaDay1': (context) => LoginPizzaDay1()
      },
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image.asset('assets/img/StanLogo.png'),
                ),
                _buttom(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buttom(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      child: RaisedButton(
        child: Text(
          'Day 1 - Login Pizza',
          style: TextStyle(fontSize: 15.0),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'LoginPizzaDay1');
        },
      ),
    );
  }
}
