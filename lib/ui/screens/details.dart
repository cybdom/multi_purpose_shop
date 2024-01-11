import 'package:flutter/material.dart';
import 'package:shop_delivery/global.dart';
import 'package:shop_delivery/ui/widgets/counter.dart';

class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.shopping_basket,
                            ),
                            onPressed: () =>
                                Navigator.pushNamed(context, 'orderscreen')),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Hero(
                        tag: '$id',
                        child: Image.network(
                          "${productsList[id].img}",
                          width: MediaQuery.of(context).size.width * .7,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "${productsList[id].title}",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Text(
                        "Description",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "${productsList[id].description}",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Counter(),
                          Text(
                            "${productsList[id].price}",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text(
                            "Add To Cart",
                            style:
                                Theme.of(context).textTheme.labelLarge?.apply(
                                      color: Colors.white,
                                    ),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
