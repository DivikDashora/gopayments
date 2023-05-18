//@dart=2.9
import 'package:flutter/material.dart';

import 'package:gopayment/firstpage.dart';
import 'package:gopayment/profile.dart';

void main() => runApp(MaterialApp(
      home: Page1(),
      debugShowCheckedModeBanner: false,
    ));

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  // const homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.amber[300],
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.grey[600],
            title: const Text(
              'GO',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontFamily: 'medium',
                  fontSize: 30),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(100.0),
                      child: Image(image: AssetImage('assets/go.jpeg')),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      // controller: controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0)),
                          labelText: 'AMOUNT',
                          hintText: 'Enter Amount',
                          labelStyle: TextStyle(color: Colors.grey[400])),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                          onPressed: () {
                            // getPayment();
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.amber[300]),
                              fixedSize: MaterialStateProperty.all(
                                  const Size.fromWidth(200)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.grey.shade400)))),
                          child: Text(
                            'proceed to pay',
                            style: TextStyle(
                                color: Colors.grey[850],
                                fontSize: 15,
                                fontFamily: 'header'),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Profile();
                    }));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            child: Image(
                                image: NetworkImage(
                                    'https://image.flaticon.com/icons/png/512/1414/1414300.png')),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('2338334212'),
                          SizedBox(
                            width: 40,
                          ),
                          Icon(Icons.arrow_forward_outlined)
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                ListTile(
                  leading: const Icon(Icons.supervised_user_circle),
                  title: const Text(
                    'Refer a friend',
                    style: TextStyle(fontFamily: 'medium', fontSize: 25),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.list),
                  title: const Text(
                    'Purchase History',
                    style: TextStyle(fontFamily: 'medium', fontSize: 25),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.logout_rounded),
                  title: const Text(
                    'Log Out',
                    style: TextStyle(fontFamily: 'medium', fontSize: 25),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            // title: Text("Are you sure you want logout ?"),
                            content: const Text(
                              "Are you sure you want logout ?",
                              style:
                                  TextStyle(fontFamily: 'header', fontSize: 20),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "No",
                                    style: TextStyle(
                                        fontFamily: 'medium', fontSize: 18),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Page1()));
                                  },
                                  child: const Text(
                                    "Yes, Logout",
                                    style: TextStyle(
                                        fontFamily: 'medium', fontSize: 18),
                                  ))
                            ],
                          );
                        });
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.help),
                  title: const Text(
                    'Help',
                    style: TextStyle(fontFamily: 'medium', fontSize: 25),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          )),
    );
  }
}
