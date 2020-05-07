import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final imageurl, name;
  CategoryTile({this.imageurl, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageurl,
              fit: BoxFit.cover,
              width: 140,
              height: 75,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 140,
            height: 75,
            decoration: BoxDecoration(
                color: Colors.black38, borderRadius: BorderRadius.circular(15)),
            child: Text(
              name,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
