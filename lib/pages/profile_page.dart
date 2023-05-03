import 'package:flutter/material.dart';

import '../tabs/feed_view.dart';
import '../tabs/reels_view.dart';
import '../tabs/tagged_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // tabs
  final List<Widget> tabs = const [
    // feed tab
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),

    // reels tab
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.grey,
      ),
    ),

    // tagged tab
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  // tab bar views
  final List<Widget> tabBarViews = const [
    // feed view
    FeedView(),

    // reels view
    ReelsView(),

    // tagged views
    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 10),
            //profile details
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // following
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      '364',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Following',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                //profile pics
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // image: Image(image: AssetImage('profile.jpg')),
                      image: DecorationImage(
                          image: AssetImage("lib/img/profile.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),

                // followers
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '30M',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            //name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Samuel Odukoya',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '|',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Developer',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 5),

            //bio
            const Text(
              'Flutter Developer  * Wordpress Expert  *  Content-Creator',
              style: TextStyle(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 5),

            //Link
            const Text(
              'zaap.bio/techadot',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            //Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                children: [
                  //edit Profile
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text("Edit Profile"),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  // contact
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text(
                          "Contact",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            //tabbar
            TabBar(
              tabs: tabs,
            ),

            //tab bar view
            SizedBox(height: 1000, child: TabBarView(children: tabBarViews)),
          ],
        ),
      ),
    );
  }
}
