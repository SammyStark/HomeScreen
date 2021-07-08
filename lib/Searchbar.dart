import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 150,
      margin: EdgeInsets.only(top: 12, right: 25),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      decoration: BoxDecoration(
        color: Color.fromRGBO(59, 88, 124, 1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey[400]),
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
