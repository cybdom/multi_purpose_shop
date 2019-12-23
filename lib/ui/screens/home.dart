import 'package:flutter/material.dart';
import 'package:shop_delivery/global.dart';
import 'package:shop_delivery/ui/widgets/categorycontainer.dart';
import 'package:shop_delivery/ui/widgets/productcontainer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.title),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text("Gift"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Person"),
          ),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Color(0xfff9f9f9),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Food",
              style: Theme.of(context).textTheme.display1.apply(
                    fontWeightDelta: 2,
                    color: Colors.black,
                  ),
            ),
            Text("Delivery",
                style:
                    Theme.of(context).textTheme.display1.copyWith(height: .9)),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 81,
              child: CategoryContainer(),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Hamburger",
              style: Theme.of(context).textTheme.title.apply(
                    fontWeightDelta: 2,
                  ),
            ),
            SizedBox(
              height: 11,
            ),
            GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: .7
              ),
              itemCount: productsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductContainer(id: index);
              },
            )
          ],
        ),
      ),
    );
  }
}
