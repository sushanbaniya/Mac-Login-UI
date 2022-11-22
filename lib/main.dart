import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Image.asset(
              'images/mac_pic.jpeg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '93%',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 5),
                      FaIcon(
                        FontAwesomeIcons.batteryHalf,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'ABC - Extended',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 300),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: CircleAvatar(
                          child: FaIcon(FontAwesomeIcons.solidUser, size: 70),
                          radius: 70,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'SUSHAN BANIYA',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 45),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 200,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 0.2),
                                ),
                                labelText: 'Enter Password',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.2,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          FaIcon(
                            FontAwesomeIcons.circleQuestion,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 230),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              FaIcon(FontAwesomeIcons.powerOff,
                                  color: Colors.white),
                              SizedBox(height: 9),
                              Text(
                                'Shut Down',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(width: 100),
                          Column(
                            children: [
                              FaIcon(FontAwesomeIcons.circlePlay,
                                  color: Colors.white),
                              SizedBox(height: 9),
                              Text(
                                'Restart',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
