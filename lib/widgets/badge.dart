// ignore_for_file: prefer_if_null_operators

import 'package:flutter/material.dart';

class MyBadge extends StatelessWidget {
  const MyBadge({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);

  final Widget child;
  final String value = '3';
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 15,
          top: 10,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            // color: Theme.of(context).hintColor,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color != null ? color : Theme.of(context).hintColor,
            ),
            constraints: const BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        )
      ],
    );
  }
}
