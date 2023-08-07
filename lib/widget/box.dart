import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String textname;
  const Box({super.key, required this.textname});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(top: 5, bottom: 19),
          padding: const EdgeInsets.only(left: 10),
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: const Color(0xFFA9A9A9)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(textname, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
        ),
      ],
    );
  }
}
