import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List suggestions = ['Hospitals', 'Slots', 'Vaccines'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(13, 52, 96, 1),
        body: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.menu_rounded,
                  color: Colors.white,
                  size: 35,
                ),
                title: Container(
                  //padding: EdgeInsets.all(),
                  color: Colors.red,
                  child: ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                trailing: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
