import 'package:flutter/material.dart';

class AminityItems extends StatelessWidget {
  const AminityItems({
    super.key,
    required this.itemOne,
    required this.itemTwo,
  });

  final String itemOne;
  final String itemTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            itemOne,
            style: const TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            itemTwo,
            style: const TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
