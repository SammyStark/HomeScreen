import 'package:flutter/material.dart';
import 'package:home_screen/Searchbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 12),
                    child: Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 38,
                    ),
                  ),
                  Row(
                    children: [
                      SearchBar(),
                      Container(
                        margin: EdgeInsets.only(top: 15, right: 12),
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(17)),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: <Widget>[
                  Card(
                    text: 'Hospital',
                    isDone: true,
                    press: () {},
                    iicon: Icon(
                      Icons.medical_services,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Card(
                    text: 'Medicine',
                    press: () {},
                    iicon: Icon(
                      Icons.medical_services,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                  Card(
                    text: 'Consultancy',
                    press: () {},
                    iicon: Icon(
                      Icons.medical_services,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                  Card(
                    text: 'Diagnostics',
                    press: () {},
                    iicon: Icon(
                      Icons.medical_services,
                      color: Colors.yellow,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String text;
  final bool isDone;
  final VoidCallback press;
  final Icon iicon;
  const Card({
    required this.text,
    this.isDone = false,
    required this.press,
    required this.iicon,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          margin: EdgeInsets.all(5),
          height: 50,
          width: 170,
          decoration: BoxDecoration(
            color: Color.fromRGBO(59, 88, 124, 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            onTap: press,
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 4),
                    padding: EdgeInsets.only(left: 8, right: 5),
                    // height: 42,
                    // width: 43,
                    child: iicon),
                SizedBox(width: 10),
                Text(
                  "$text",
                  // ignore: deprecated_member_use
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
