//@dart=2.9
import 'package:flutter/material.dart';
import 'package:gopayment/register.dart';

import 'login.dart';

class Page1 extends StatefulWidget {
  const Page1({Key key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[300],
        body: Container(
          height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width - 10,
          decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(150.0),
                  topLeft: Radius.circular(150.0))),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  const SizedBox(height: 100),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber[300],
                      shape: BoxShape.circle,
                    ),
                    // color: Colors.grey[400],
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        'Go',
                        style: TextStyle(
                            color: Colors.grey[850],
                            fontSize: 110,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber[300]),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber[300]),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber[300]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogInPage()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.amber[300]),
                    fixedSize:
                        MaterialStateProperty.all(const Size.fromWidth(200)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.grey.shade400)))),
                child: Text(
                  'Login',
                  style:
                      TextStyle(color: Colors.grey[850], fontFamily: 'header'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.amber[300]),
                    fixedSize:
                        MaterialStateProperty.all(const Size.fromWidth(200)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.grey.shade400)))),
                child: Text(
                  'Register',
                  style:
                      TextStyle(color: Colors.grey[850], fontFamily: 'header'),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      '\"Payments on the Go\"',
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 25,
                          fontFamily: 'quote'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
