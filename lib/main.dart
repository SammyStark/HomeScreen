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
                      Icons.menu,
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
              
               Padding(
                    padding: const EdgeInsets.only(left: 20, top: 40.0),
                    child: 
              Column(crossAxisAlignment: CrossAxisAlignment.start,
          
              children:[
              Text(
                          'Stay Home',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10,),
                          Text(
                          'Stay Home',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600),
                        ),]),),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: <Widget>[
                  Card(
                    text: 'Hospital',
                    isDone: true,
                    press: () {},
                    iicon: Icon(Icons.arrow_right,
                      //Icons.medical_services,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Card(
                    text: 'Medicine',
                    press: () {},
                    iicon: Icon(Icons.arrow_right,
                      //Icons.medical_services,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                  Card(
                    text: 'Consultancy',
                    press: () {},
                    iicon: Icon(
                       Icons.arrow_right,
                      //Icons.medical_services,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                  Card(
                    text: 'Diagnostics',
                    press: () {},
                    iicon: Icon(
                      Icons.arrow_right,
                      color: Colors.yellow,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
               
                   Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 150.0,
                    width:350,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFF003D64),
                        borderRadius: BorderRadius.circular(20.0),
                       image: DecorationImage(
            image: AssetImage("assets/24740.jpg"),
            fit: BoxFit.cover,
          ),
                  ),),
                 /* Container(
                    alignment: FractionalOffset.centerRight,
                    child: Image(
                      image: AssetImage(
                        'assets/24740.jpg',
                      ),
                      height: 200,
                      width: 190,
                    ),
                  ),*/
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children:[
                        Text(
                          'Live Update',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600),
                        ),
                          Container(
                        margin: EdgeInsets.only(left:110),
                          height: 40.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromRGBO(13, 52, 96, 1),
                          ),
                          child: Center(
                           
                                
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                   
                                  ),
                                
                              
                            
                          ),
                        ]),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'About Corona Virus',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                         
                      
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(margin: EdgeInsets.all(20),
                    width: 350,
                    height: 200.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color:  Color.fromRGBO(59, 88, 124, 1),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0.0, 10.0),
                              blurRadius: 10.0)
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:200, top:40),
                    child: Image(
                      image: AssetImage(
                        'assets/62825.jpg',
                      ),
                      height: 130,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '5 Symptoms',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'about Corona',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          height: 40.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:  Colors.white38,
                          ),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'Learn More',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                    alignment: PlaceholderAlignment.middle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
    this.text,
    this.isDone = false,
   this.press,
    this.iicon,
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
