import 'package:flutter/material.dart';

class QuantityIndicator extends StatefulWidget {
  @override
  _QuantityIndicatorState createState() => _QuantityIndicatorState();
}

class _QuantityIndicatorState extends State<QuantityIndicator> {
  int _quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Row(
        children: <Widget>[
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () {
              setState(() {
                _quantity += 1;
              });
            },
          ),
          SizedBox(
            width: 5.0,
          ),
          Text("$_quantity"),
          SizedBox(
            width: 5.0,
          ),
          GestureDetector(
            child: Icon(Icons.remove),
            onTap: () {
              setState(() {
                _quantity -= 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
