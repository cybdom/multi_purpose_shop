import 'package:flutter/material.dart';
import 'package:shop_delivery/global.dart';
import 'package:shop_delivery/ui/screens/details.dart';

class ProductContainer extends StatelessWidget {
  final int id;

  const ProductContainer({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailsScreen(id: id)),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${productsList[id].price}",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Hero(
                  tag: '$id',
                  child: Image.network(
                    "${productsList[id].img}",
                    fit: BoxFit.cover,
                    // width: double.infinity,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(9.0),
                ),
              ),
              child: Text(
                "${productsList[id].title}",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
