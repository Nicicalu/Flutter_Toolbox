import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:toolbox/widget/applist.dart';
import 'package:toolbox/widget/topcategory.dart';
import 'package:toolbox/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.grey[800],
        backgroundColor: Colors.white,

      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        backgroundColor: Colors.grey[600],
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) =>  Home(),
        '/settings': (BuildContext context) =>  SettingsPage(),
      },
    );
  }
}

class Home extends StatefulWidget {
  final String header;

  Home({Key key, this.header}) : super(key: key);
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          bottom: true,
          right: false,
          left: false,
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
//                        Colors.blue[400],
//                        Colors.blue[300],
                      ],
                      // stops: [0.0, 0.1],
                    ),
                  ),

                  height: MediaQuery.of(context).size.height * .40,
                  padding: EdgeInsets.only(top: 08, left: 30, right: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Toolbox App by Nicolas Caluori",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            iconSize: 30.0,
                            onPressed: () {
                              //Navigator.of(context).pushReplacementNamed('/search');
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            iconSize: 30.0,
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed('/settings');
                            },
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        "",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Toolbox",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
//                Container(
//                  height: MediaQuery.of(context).size.height * .75,
//                  color: Colors.white,
//                ),
              ],
            ),

            Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .27,
                  right: 20.0,
                  left: 20.0),
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GridView(
                  primary: false,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2.5),
                  ),
                  children: <Widget>[

                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TopCategory(
                        category: "Meist genutzt",
                        name: "Rechner",
                        icon: Icon(Icons.smartphone, color: Colors.green[400], size: 35.0),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: TopCategory(
                        category: "Zuletzt genutzt",
                        name: "QR-Code",
                        icon: Icon(Icons.smartphone, color: Colors.green[400], size: 35.0),
                      ),
                    ),



                  ],
                ),
              ),
            ),

            Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .47,
                  right: 20.0,
                  left: 20.0),
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  primary: false,
                  children: <Widget>[

                    AppList(
                      category: "Games",
                      amount: "Tetris",
                      icon: Icon(Icons.games, color: Colors.cyan, size: 40.0),
                    ),

                    SizedBox(height: 10.0,),

                    AppList(
                      category: "Games",
                      amount: "Snake",
                      icon: Icon(Icons.games, color: Colors.cyan, size: 40.0),
                    ),

                    SizedBox(height: 10.0,),

                    AppList(
                      category: "Tool",
                      amount: "Chat",
                      icon: Icon(Icons.textsms, color: Colors.cyan, size: 40.0),
                    ),

                    SizedBox(height: 10.0,),

                    AppList(
                      category: "Tool",
                      amount: "QR-Code-Scanner",
                      icon: Icon(Icons.scanner, color: Colors.cyan, size: 40.0),
                    ),

                    SizedBox(height: 10.0,),

                    AppList(
                      category: "Tool",
                      amount: "Rechner",
                      icon: Icon(Icons.smartphone, color: Colors.cyan, size: 40.0),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      ),
    );
  }
}