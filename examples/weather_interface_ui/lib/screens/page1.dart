import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/1.png',
            fit: BoxFit.fitWidth,
            width: queryData.size.width,
            height: queryData.size.height,
          ),
          Column(
            children: <Widget>[
              SizedBox(height: queryData.size.width * 0.15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '12 July\'18',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: queryData.size.width * 0.05,
                        ),
                      ),
                      Text(
                        '6°',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: queryData.size.width * 0.15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.cloud,
                        color: Colors.white,
                      ),
                      Text(
                        'Sunny',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: queryData.size.width * 0.06,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: queryData.size.width * 0.727),
              Container(
                color: Colors.black26,
                width: queryData.size.width,
                height: queryData.size.width * 0.55,
                child: Padding(
                  padding: EdgeInsets.all(queryData.size.width * 0.025),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'BROAD',
                        style: TextStyle(
                          fontSize: queryData.size.width * 0.08,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: queryData.size.width * 0.005,
                        ),
                      ),
                      Text(
                        'SEA FLOOR',
                        style: TextStyle(
                          fontSize: queryData.size.width * 0.08,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: queryData.size.width * 0.005,
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.025),
                      Wrap(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien augue, volutpat ut nisl ut, dictum tempus eros. Duis hendrerit efficitur viverra. Proin vehicula laoreet metus eu fermentum. In vel.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: queryData.size.width * 0.045,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
