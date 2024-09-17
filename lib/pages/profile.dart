import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_ui/widgets/info_item.dart';
import 'package:instagram_ui/widgets/profile_picture.dart';
import 'package:instagram_ui/widgets/story_item.dart';
import 'package:instagram_ui/widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "Andigwn_04",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem(
                        title: "213",
                        value: "Post",
                      ),
                      InfoItem(
                        title: "1.5M",
                        value: "Followers",
                      ),
                      InfoItem(
                        title: "127",
                        value: "Following",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Andigwn_04",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                  text: const TextSpan(
                      text:
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                      children: [
                    TextSpan(
                      text: "#hashtag",
                      style: TextStyle(color: Colors.blue, fontSize: 17),
                    )
                  ]))),
          const SizedBox(height: 15),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Link goes here",
                style: TextStyle(color: Colors.blue, fontSize: 17),
              )),
          const SizedBox(height: 15),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  onPressed: () {},
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ))),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem(
                    title: "Story 1",
                    image: "assets/image/Cat-orange1.jpg",
                  ),
                  StoryItem(
                    title: "Story 2",
                    image: "assets/image/Cat-orange.jpg",
                  ),
                  StoryItem(
                    title: "Story 3",
                    image: "assets/image/Cat-orange.jpg",
                  ),
                  StoryItem(
                    title: "Story 5",
                    image: "assets/image/Cat-orange.jpg",
                  ),
                  StoryItem(
                    title: "Story 6",
                    image: "assets/image/Cat-orange.jpg",
                  ),
                  StoryItem(
                    title: "Story 7",
                    image: "assets/image/Cat-orange.jpg",
                  ),
                  StoryItem(
                    title: "Story 8",
                    image: "assets/image/Cat-orange.jpg",
                  ),
                  StoryItem(
                    title: "Story 9",
                    image: "assets/image/Cat-orange.jpg",
                  ),
                  StoryItem(
                    title: "Story 10",
                    image: "assets/image/Cat-orange.jpg",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TabItem(
                  active: true,
                  icon: Icons.grid_on,
                ),
                TabItem(
                  active: false,
                  icon: Icons.person_pin_outlined,
                ),
              ]),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 213,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 5, crossAxisSpacing: 5, crossAxisCount: 3),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_rounded),
              label: "Reals",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
    );
  }
}
