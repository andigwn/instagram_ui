import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({
    required this.title,
    required this.value,
    super.key,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        title,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      Text(value),
    ]);
  }
}
