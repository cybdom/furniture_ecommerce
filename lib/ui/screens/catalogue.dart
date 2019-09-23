import 'package:flutter/material.dart';
import 'package:furniture_ecommerce/ui/screens/screens.dart';
import 'package:furniture_ecommerce/ui/widgets/trustyhorizontalmenu.dart';

class CatalogueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Furniture",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 55,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                alignment: Alignment.center,
                child: TrustyHorizontalMenu(
                  list: [
                    "Sofa",
                    "Bed",
                    "Cabinet",
                    "Stool",
                    "Table",
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 17,
                    mainAxisSpacing: 17,
                  ),
                  itemBuilder: (ctx, i) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(0, 3),
                              blurRadius: 3.0),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(9.0),
                                  topRight: Radius.circular(9.0),
                                ),
                                color: Color(0xffe5e6ea),
                              ),
                              child: Image.network(
                                  "https://ak0.scstatic.net/1/bigimg-cdn1-cont12.sweetcouch.com/149725972559962841-modern-loveseat-sofa-tufted-back-tapered.png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Wome Sofa",
                                  style: Theme.of(context).textTheme.title,
                                ),
                                Text(
                                  "Free mind and body",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subhead
                                      .apply(color: Colors.grey[500]),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "\$299",
                                      style: Theme.of(context)
                                          .textTheme
                                          .title
                                          .apply(fontWeightDelta: 2),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (ctx) {
                                              return CartScreen();
                                            },
                                          ),
                                        );
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.cyan,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey[400],
                                              blurRadius: 5.0,
                                              offset: Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
