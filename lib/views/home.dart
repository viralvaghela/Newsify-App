import 'package:flutter/material.dart';
import 'package:news_app/blocs/theme.dart';
import 'package:provider/provider.dart';

import 'components/title.dart';

bool lighttheme = false;
bool initial = true;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themechanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: AppBar(
            leading: Icon(
              Icons.receipt,
              size: 30,
              color: lighttheme ? Colors.white : Colors.black,
            ),
            actions: appbarActions(_themechanger),
            centerTitle: false,
            elevation: 0,
            title: NewsifyTitle(),
          ),
        ),
      ),
      body:Container(
        
      )
    );
  }

  List<Widget> appbarActions(ThemeChanger _themechanger) {
    return <Widget>[
      IconButton(
        icon: Icon(
          Icons.brightness_6,
          color: lighttheme ? Colors.white : Colors.black,
        ),
        onPressed: () {
          lighttheme ? _themechanger.lightTheme() : _themechanger.darkTheme();
          if (lighttheme == true) {
            lighttheme = false;
          } else {
            lighttheme = true;
          }
        },
      ),
      IconButton(
        icon: Icon(
          Icons.info,
          color: lighttheme ? Colors.white : Colors.black,
        ),
        onPressed: () {},
      )
    ];
  }
}
