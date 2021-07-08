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
              ListTile(
                
                leading: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 35,
                ),
                title: SearchBar(),
                trailing: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(height:40),
              Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                       Card(
                          text:'Hospital',
                          isDone: true,
                          press: () {},
                        ),
                       Card(
                        text:'Medicine',
                          press: () {},
                        ),
                        Card(
                        text:'Consultancy',
                          press: () {},
                        ),
                       Card(
                         text:'Diagnostics',
                          press: () {},
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
  final Function press;
  const Card({
    Key key,
    this.text,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                //color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? Colors.grey : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : Colors.grey,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "$text",
                      style: Theme.of(context).textTheme.subtitle,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
