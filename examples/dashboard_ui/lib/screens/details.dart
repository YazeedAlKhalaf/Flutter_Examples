import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String title;
  final IconData icon;
  final int color;

  DetailsScreen(this.icon, this.title, this.color);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  MediaQueryData queryData;

  Card _buildCard(String text, IconData icon, int color) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(queryData.size.width * 0.03),
        child: Center(
          child: Row(
            children: <Widget>[

              // ? Icon Area
              ClipOval(
                child: Container(
                  color: Color(color),
                  child: Padding(
                    padding: EdgeInsets.all(queryData.size.width * 0.03),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(width: queryData.size.width * 0.05),
              // ? Text Area
              Text(
                text,
                style: TextStyle(
                  fontSize: queryData.size.width * 0.032,
                  fontWeight: FontWeight.bold,
                  color: Color(color),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildCard(widget.title, widget.icon, widget.color),
            _buildCard('lorem ipsum lorem ipsum', Icons.insert_chart, widget.color),
            _buildCard('lorem ipsum lorem ipsum lorem ipsum lorem ipsum', Icons.https, widget.color),
            _buildCard('lorem ipsum lorem ipsum', Icons.headset, widget.color),
            _buildCard('lorem ipsum lorem ipsum lorem ipsum', Icons.highlight, widget.color),
            _buildCard('lorem ipsum lorem ipsum lorem ipsum', Icons.highlight, widget.color),
          ],
        ),
      ),
    );
  }
}