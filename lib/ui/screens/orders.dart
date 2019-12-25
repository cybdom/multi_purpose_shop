import 'package:flutter/material.dart';
import 'package:shop_delivery/global.dart';
import 'package:shop_delivery/ui/widgets/counter.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "My Order",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .apply(fontWeightDelta: 2, color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        ...List.generate(productsList.length, (id) {
                          return ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.network(
                                "${productsList[id].img}",
                                width: 70,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                            title: Text(
                              "${productsList[id].title}",
                              style: Theme.of(context).textTheme.title,
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                              ),
                              child: Counter(),
                            ),
                            trailing: Text(
                              "${productsList[id].price}",
                              style: Theme.of(context).textTheme.title,
                            ),
                          );
                        }).toList(),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: ListTile(
                            leading: Container(
                              width: 70,
                              height: double.infinity,
                              // margin: EdgeInsets.only(top: 15),
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Icon(Icons.dashboard),
                            ),
                            title: Text(
                              "Delivery",
                              style: Theme.of(context).textTheme.headline.apply(
                                    fontWeightDelta: 2,
                                  ),
                            ),
                            trailing: Text(
                              "\$5.99",
                              style: Theme.of(context).textTheme.title,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Payment",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          ...List.generate(1, (i) {
                            return Container(
                              padding: const EdgeInsets.all(15.0),
                              margin: const EdgeInsets.only(right: 15),
                              alignment: Alignment.topLeft,
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "**** 4832",
                                    style: Theme.of(context)
                                        .textTheme
                                        .title
                                        .apply(color: Colors.white),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$25.99",
                                    style:
                                        Theme.of(context).textTheme.title.apply(
                                              color: Colors.white,
                                            ),
                                  ),
                                  Image.asset("assets/img/mastercard.png"),
                                ],
                              ),
                            );
                          }),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 15.0,
                              ),
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Icon(Icons.add),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        "Confirm Payment",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .apply(color: Colors.white),
                      ),
                      onPressed: () {},
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
