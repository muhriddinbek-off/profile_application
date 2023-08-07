import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String textname;
  const TitleText({super.key, required this.textname});

  @override
  Widget build(BuildContext context) {
    return Text(textname, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500));
  }
}
