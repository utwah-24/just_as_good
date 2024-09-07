// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:just_as_good/providers/product_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/prod_item.dart';

class TopProducts extends StatelessWidget {
  const TopProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProvider>(context);
    final prod = productData.items;

    // Filter the prod list to ensure itemCount is a multiple of 5
    // final filteredProd = prod.sublist(0, 5 * (prod.length ~/ 5));
    return Container(
      padding: EdgeInsets.all(10),
      color: Color(0xFFFFA500),
      height: 209,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 2 / 2, mainAxisSpacing: 5),
        itemCount: prod.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: prod[i],
          child: ProductItem(),
        ),
      ),
    );
  }
}
