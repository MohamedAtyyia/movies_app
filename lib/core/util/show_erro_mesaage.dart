import 'package:flutter/material.dart';

class ShowerroMessage extends StatelessWidget {
  const ShowerroMessage({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Center(
            child: Text(
             text,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          );
  }
}