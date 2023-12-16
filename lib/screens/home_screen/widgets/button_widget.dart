import 'package:flutter/material.dart';

class PropertiesButton extends StatelessWidget {
  const PropertiesButton({
    super.key,
    required this.buttonName,
  });

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 11, 2, 65),
          borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonName,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}
