import 'package:flutter/material.dart';
import 'package:furniture_ecommerce/global.dart';
import 'package:furniture_ecommerce/ui/widgets/mycustommenu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Mine"),
        backgroundColor: Colors.cyan,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.cyan,
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 41.3,
                        backgroundImage: NetworkImage(
                          profilePictureUrl,
                        ),
                      ),
                      SizedBox(
                        width: 31,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Cybdom",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.apply(color: Colors.white),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "Designers who love coding?",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.apply(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                // color: Colors.cyan,
                                ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 9.0, horizontal: 15.0),
                      padding: EdgeInsets.all(11.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 1.0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "435",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Text("Fans"),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "1395",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Text("Followers"),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "51",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Text("Reviews"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          MyCustomMenu(),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            itemCount: 5,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 2 / 3),
            itemBuilder: (ctx, i) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
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
                            "https://cdn.pixabay.com/photo/2017/03/19/09/02/sofa-2155865_1280.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Wome Sofa",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            "Free mind and body",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.apply(color: Colors.grey[500]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
