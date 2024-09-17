import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    required this.title,
    required this.image,
    super.key,
  });
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image))),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
