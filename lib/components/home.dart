import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostImage extends StatefulWidget {
  const PostImage({super.key});

  @override
  State<PostImage> createState() => _PostImageState();
}

class _PostImageState extends State<PostImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://www.pngall.com/wp-content/uploads/5/Profile-PNG-High-Quality-Image.png',
                ),
              ),
            ),
            Text('username', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Image.network(
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFzc3BvcnR8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(FontAwesomeIcons.heart),
                  SizedBox(width: 15),
                  Icon(FontAwesomeIcons.comment),
                  SizedBox(width: 15),
                  Icon(FontAwesomeIcons.share),
                  SizedBox(width: 15),
                  Spacer(),
                  Icon(FontAwesomeIcons.arrowUp, size: 18, color: Colors.grey),
                ],
              ),
              const Text('A beautiful view of the mountains during sunset.'),
              const Text(
                "View all 10 comments",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const Text(
                "2 hours ago",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }

}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(FontAwesomeIcons.lockOpen, size: 20),
            SizedBox(width: 8),
            const Text(
              'Ownback',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(FontAwesomeIcons.cloudArrowUp),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.locationDot),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(children: [PostImage(), PostImage(), PostImage()]),
      ),
    );
  }
}
