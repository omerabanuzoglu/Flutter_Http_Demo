import 'package:flutter/material.dart';
import 'package:http_demo/models/products.dart';

class ProductListRowWidget extends StatelessWidget {
  Product product;
  ProductListRowWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(
                  "https://pbs.twimg.com/profile_images/1261547873537273858/ie9FJ6Ys_400x400.jpg"),
              height: 150.0,
              width: MediaQuery.of(context).size.width / 2,
            ),
            Text(product.title),
            Text(product.userId.toString())
          ],
        ),
      ),
    );
  }
}
