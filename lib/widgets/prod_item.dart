import 'package:flutter/Foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';
import '../screens/prod_detail_screen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String ImageUrl;
  // final String title;

  // ignore: prefer_const_constructors_in_immutables
  ProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Product>(context, listen: false);
    // final cart = Provider.of<Cart>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(ProductDetailScreen.routeName, arguments: products.id);
      },
      child: SingleChildScrollView(
        child: Container(
          // padding: const EdgeInsets.all(8.0),
          color: const Color(0xFFFFA500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                fit: BoxFit.fill,
                products.imageUrl,
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 3.0),
              Text(
                products.title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                products.price.toString(),
                style: const TextStyle(
                  fontSize: 13.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 1.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      // Add to cart logic here
                      if (kDebugMode) {
                        print('Added to cart');
                      }
                    },
                    icon: const Icon(Icons.shopping_cart, size: 30),
                  ),
                  IconButton(
                    onPressed: () {
                      // Favorite logic here
                      if (kDebugMode) {
                        print('Added to favorites');
                      }
                    },
                    icon: const Icon(
                      Icons.favorite_border,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
