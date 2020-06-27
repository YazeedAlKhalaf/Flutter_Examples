import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// URL of the API
  /// `?results=X` where `X` is equal to the number of results per API call
  String url = 'https://randomuser.me/api/?results=50';

  /// An empty list to add the data we get from the API call into
  List data;

  /// A `GlobalKey` to keep track of the refresh indicator
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  /// A `function` that makes the request call
  Future makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractdata = jsonDecode(response.body);
      data = extractdata["results"];

      print(data.length);

      return null;
    });
  }

  /// The `initState()` function runs as soon as the `widget` is rendered
  /// The function `makeRequest()` is in the initState so that the request is called
  /// as soon as the widget is rendered
  @override
  void initState() {
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random People'),
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: () => makeRequest(),
        child: ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, i) {
              return ListTile(
                title: Text(data[i]["name"]["first"]),
                subtitle: Text(data[i]["phone"]),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(data[i]["picture"]["thumbnail"]),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              DetailsPage(data[i])));
                },
              );
            }),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  DetailsPage(this.data);
  final data;
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          title: Row(
        children: <Widget>[
          Text("Photo of "), // TODO: change to "Details of"
          Text(data["name"]["first"]),
        ],
      )),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: DecorationImage(
              image: NetworkImage(data["picture"]["large"]),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(100.0)),
            border: Border.all(
              color: Colors.red,
              width: 4.0,
            ),
          ),
        ),
      ));
}
