import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  MediaQueryData queryData;
  Color orangec = Color(0xffFEAC46);
  Color greyc = Color(0xff494F58);
  Color bluec = Color(0xff59C0E6);

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomPaint(
          painter: SignInPainter(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: queryData.size.width * 0.1),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.05),
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: queryData.size.width * 0.05),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.07),
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: queryData.size.width * 0.11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.07),
                  Text(
                    'Back',
                    style: TextStyle(
                      fontSize: queryData.size.width * 0.11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: queryData.size.width * 0.22),
              Padding(
                padding: EdgeInsets.all(queryData.size.width * 0.07),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: queryData.size.width * 0.2),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: queryData.size.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ClipOval(
                            child: Material(
                              color: greyc,
                              child: InkWell(
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      queryData.size.width * 0.07),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              print('you tapped on sign up inkwell');
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SignUpPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: queryData.size.width * 0.05,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              print('you tapped on forgot password inkwell');
                            },
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                fontSize: queryData.size.width * 0.05,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
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

class SignInPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const Color orangec = Color(0xffFEAC46);
    const Color greyc = Color(0xff494F58);
    const Color bluec = Color(0xff59C0E6);

    var paint = Paint();

    paint.color = bluec;

    Offset c1 = Offset(size.width * 1.0, size.width * 0.01);
    double radius1 = size.width * 1.1;

    canvas.drawCircle(c1, radius1, paint);

    paint.color = greyc;

    Offset c2 = Offset(size.width * 0.05, size.width * 0.05);
    double radius2 = size.width * 0.9;

    canvas.drawCircle(c2, radius2, paint);

    paint.color = orangec;

    Offset c3 = Offset(size.width * 0.0, size.width * 0.0);
    double radius3 = size.width * 0.5;

    canvas.drawCircle(c3, radius3, paint);
  }

  @override
  bool shouldRepaint(SignInPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(SignInPainter oldDelegate) => false;
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  MediaQueryData queryData;
  Color orangec = Color(0xffFEAC46);
  Color greyc = Color(0xff494F58);
  Color bluec = Color(0xff59C0E6);

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomPaint(
          painter: SignUpPainter(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: queryData.size.width * 0.1),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.05),
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: queryData.size.width * 0.05),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.07),
                  Text(
                    'Create',
                    style: TextStyle(
                      fontSize: queryData.size.width * 0.11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.07),
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: queryData.size.width * 0.11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(queryData.size.width * 0.07),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: queryData.size.width * 0.1),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: queryData.size.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ClipOval(
                            child: Material(
                              color: greyc,
                              child: InkWell(
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      queryData.size.width * 0.07),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              print('you tapped on sign in inkwell');
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SignInPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: queryData.size.width * 0.05,
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
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

class SignUpPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const Color orangec = Color(0xffFEAC46);
    const Color greyc = Color(0xff494F58);
    const Color bluec = Color(0xff59C0E6);

    var paint = Paint();

    paint.color = bluec;

    Offset c1 = Offset(size.width * 0.15, size.width * 0.8);
    double radius1 = size.width * 1.0;

    canvas.drawCircle(c1, radius1, paint);

    paint.color = greyc;

    Offset c2 = Offset(size.width * 0.2, size.height * 0.02);
    double radius2 = size.width * 0.9;

    canvas.drawCircle(c2, radius2, paint);
  }

  @override
  bool shouldRepaint(SignInPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(SignInPainter oldDelegate) => true;
}
