import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            centerTitle: true,
            title: const Text('zeno'),
          actions: [
            IconButton(onPressed: () {},
                icon: const Icon(Icons.search))
          ],
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                decoration: InputDecoration(hintText: 'Search'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 100,
                    child: Image.asset('assets/room-2.jpg'),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('bedroom'),
              leading: Image.asset('assets/room-1.jpg'),
            ),
          const SizedBox(height: 16),
            ListTile(
              title: const Text('living room'),
              leading: Image.asset('room-2.jpg'),
            ),
          const SizedBox(height: 16),
            ListTile(
              title: const Text('kitchen'),
              leading: Image.asset('assets/news-2.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
