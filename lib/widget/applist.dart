import 'package:flutter/material.dart';

class AppList extends StatelessWidget {

  final String category;
  final String amount;
  final Icon icon;
  AppList({
    Key key,
    @required this.category,
    @required this.amount,
    @required this.icon,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: InkWell(
        onTap: () => print(this.category),
        child: Container(
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 20.0),
                child: icon,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            category,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan,
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("$amount",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w900,
                              //color: Colors.grey[800],
                            ),
                          ),
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}