import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    required this.icon,
    required this.active,
    super.key,
  });
  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
              color: active == true ? Colors.black : Colors.white, width: 1),
        )),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              size: 30,
            )),
      ),
    );
  }
}
