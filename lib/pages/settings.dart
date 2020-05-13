import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class SettingsPage extends StatefulWidget {
  final String header;

  SettingsPage({Key key, this.header}) : super(key: key);
  
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),

                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      // Add one stop for each color. Stops should increase from 0 to 1
                      stops: [0.2, 0.7],
                      colors: [
                        Color(0xff00b2bb),
                        Color(0xff79d2a6),
                        //Colors.blue[400],
                        //Colors.blue[300],
                      ],
                      // stops: [0.0, 0.1],
                    ),
                  ),

                  height: MediaQuery.of(context).size.height * .10,
                  padding: EdgeInsets.only(top: 28, left: 30, right: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            iconSize: 30.0,
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed('/home');
                            },
                          ),
                          Text("Einstellungen",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Container(
                //   height: MediaQuery.of(context).size.height * .75,
                //   color: Colors.white,
                //),
              ],
            ),
          ],
        ),
      ),
    );
  }
}