import 'package:flutter/material.dart';

class TrustyHorizontalMenu extends StatefulWidget {
  final List<dynamic> list;

  const TrustyHorizontalMenu({super.key, required this.list});
  @override
  _TrustyHorizontalMenuState createState() => _TrustyHorizontalMenuState();
}

class _TrustyHorizontalMenuState extends State<TrustyHorizontalMenu> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: widget.list.length,
      itemBuilder: (ctx, id) {
        return GestureDetector(
          onTap: () {
            setState(() {
              active = id;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                Text(
                  "${widget.list[id]}",
                  style: TextStyle(
                    fontWeight:
                        active == id ? FontWeight.bold : FontWeight.normal,
                    color: active == id ? Colors.black : Colors.grey[500],
                    fontSize: 17,
                  ),
                ),
                active == id
                    ? Container(
                        width: 15,
                        height: 3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.cyan),
                      )
                    : Container(),
              ],
            ),
          ),
        );
      },
    );
  }
}
