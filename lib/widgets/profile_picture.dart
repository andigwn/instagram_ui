import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.orange])),
        ),
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/image/Cat.jpg"), fit: BoxFit.cover),
              border: Border.all(width: 5, color: Colors.white),
              borderRadius: BorderRadius.circular(60),
              color: Colors.grey[300]),
        )
      ],
    );
  }
}
