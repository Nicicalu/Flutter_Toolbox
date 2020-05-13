import 'package:flutter/material.dart';

class TopCategory extends StatelessWidget {

  final String category;
  final String name;
  final Icon icon;
  TopCategory({
    Key key,
    @required this.category,
    @required this.name,
    @required this.icon,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0)),
      elevation: 4.0,
      child: InkWell(
        onTap: () => print("tapped"),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 15.0, bottom: 0.0, right: 10.0, left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Column(
                      children: <Widget>[
                        Text(
                          category,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[400],
                          ),
                        ),

                        SizedBox(height: 10.0),
                        Text("$name",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            //color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(height: 7.0,),
                        icon,
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