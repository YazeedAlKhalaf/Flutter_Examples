import 'package:dashboard_ui/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  MediaQueryData queryData;

  Widget myItems(IconData icon, String title, int color, Widget route) {
    return InkWell(
      onTap: () {
        print(title);
        Navigator.push(context, 
        MaterialPageRoute(
          builder: (_) => route,
          ),
        );
      },
      child: Material(
        color: Colors.white,
        elevation: 14.0,
        shadowColor: Color(0x80219f3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(queryData.size.width * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                // ? Text
                Padding(
                  padding: EdgeInsets.all(queryData.size.width * 0.03),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Color(color),
                        fontSize: queryData.size.width * 0.05,
                        ),
                    ),
                  ),
                ),


                // ? Icon
                Material(
                  color: Color(color),
                  borderRadius: BorderRadius.circular(24.0),
                  child: Padding(
                    padding: EdgeInsets.all(queryData.size.width * 0.04),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: queryData.size.width * 0.07,  
                    ),
                  ),
                ),
              ],
            ),
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
        title: Text('Admin Panel'),
        centerTitle: true,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: queryData.size.width * 0.03,
        mainAxisSpacing: queryData.size.width * 0.03,
        padding: EdgeInsets.symmetric(horizontal: queryData.size.width * 0.04, vertical: queryData.size.width * 0.02),
        children: <Widget>[
          myItems(Icons.graphic_eq, 'Total Views', 0xffed622b, DetailsScreen(Icons.graphic_eq, 'Total Views', 0xffed622b)),
          myItems(Icons.bookmark, 'Bookmark', 0xff26cd3c, DetailsScreen(Icons.bookmark, 'Bookmark', 0xff26cd3c)),
          myItems(Icons.notifications, 'Notifications', 0xffff3266, DetailsScreen(Icons.notifications, 'Notifications', 0xffff3266)),
          myItems(Icons.attach_money, 'Balance', 0xff3399fe, DetailsScreen(Icons.attach_money, 'Balance', 0xff3399fe)),
          myItems(Icons.settings, 'Settings', 0xfff4c83f, DetailsScreen(Icons.settings, 'Settings', 0xfff4c83f)),
          myItems(Icons.group_work, 'Group Work', 0xff622f74, DetailsScreen(Icons.group_work, 'Group Work', 0xff622f74)),
          myItems(Icons.message, 'Messages', 0xff7297ff, DetailsScreen(Icons.message, 'Messages', 0xff7297ff)),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 140.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(2, 240.0),
          StaggeredTile.extent(2, 140.0),
        ],
      ),
    );
  }
}