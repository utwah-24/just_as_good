// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../providers/product_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  const ProductDetailScreen({
    Key? key,
  }) : super(key: key);
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct = Provider.of<ProductProvider>(context, listen: false)
        .findById(productID);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
              color: Colors.black,
              Icons.arrow_back), // Replace Icons.menu with your desired icon
          onPressed: () {
            Navigator.pop(context); // Handle the button press
          },
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFFFA500),
        toolbarHeight: 70,
        title: Center(
          child: Text(
            loadedProduct.title,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Quicksand',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 300,
              width: double.infinity,
              child: Image.network(loadedProduct.imageUrl, fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '\$${loadedProduct.price}',
              style: const TextStyle(color: Colors.grey, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: Text(
                loadedProduct.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
