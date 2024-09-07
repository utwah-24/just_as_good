// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

import 'products.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _item = [
    Product(
      id: 'p1',
      title: 'Mayonnaise',
      description: 'Just some mayo',
      price: 29.99,
      imageUrl:
          'https://d2j6dbq0eux0bg.cloudfront.net/images/28679550/3428920301.jpg',
    ),
    Product(
      id: 'p2',
      title: 'baking powder ',
      description: 'for baking stuff',
      price: 59.99,
      imageUrl:
          'https://cdn.optipic.io/site-2766/images/thumbnails/1163/951/detailed/17/_-ajk-P1lXRxqrOmNY8Wws6Ys6kgfAQbNcVOBbl9qps.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Tabasco chilli',
      description: 'Good for that everyday snack .',
      price: 19.99,
      imageUrl:
          'https://prestock.cabovillas.com/wp-content/uploads/2017/09/tabasco.jpg',
    ),
    Product(
      id: 'p4',
      title: 'PPF flour',
      description: 'for your everyday baking needs.',
      price: 49.99,
      imageUrl:
          'https://azaniagroup.company/wp-content/uploads/2021/01/ppf-300x300.png',
    ),
  ];

  // var _showFavOnly = false;

  List<Product> get items {
    // if (_showFavOnly) {

    // }
    return [..._item];
  }

  List<Product> get favorites {
    return _item.where((prodItem) => prodItem.isFavorite).toList();
  }

  // void showFav() {
  //   _showFavOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavOnly = false;
  //   notifyListeners();
  // }

  Product findById(String id) {
    return _item.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _item.add(value)
    notifyListeners();
  }
}
