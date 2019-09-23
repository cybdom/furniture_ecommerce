import 'package:flutter/material.dart';
import 'package:furniture_ecommerce/global.dart';

class MyCustomMenu extends StatefulWidget {
  const MyCustomMenu({
    Key key,
  }) : super(key: key);

  @override
  _MyCustomMenuState createState() => _MyCustomMenuState();
}

class _MyCustomMenuState extends State<MyCustomMenu> {
  var _active = activeMenu.footprint;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 9.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _active = activeMenu.footprint;
                });
              },
              child: Container(
                decoration: _active == activeMenu.footprint
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.cyan,
                      )
                    : BoxDecoration(),
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: Text(
                  "Footprint",
                  style: TextStyle(
                    color: _active == activeMenu.footprint
                        ? Colors.white
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _active = activeMenu.collection;
                });
              },
              child: Container(
                decoration: _active == activeMenu.collection
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.cyan,
                      )
                    : BoxDecoration(),
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: Text(
                  "Collection",
                  style: TextStyle(
                    color: _active == activeMenu.collection
                        ? Colors.white
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
