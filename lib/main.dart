import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Jay's Basic Flutter App",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Regular Weight Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Light Weight Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Bold Weight Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Image(
                    image: NetworkImage('https://picsum.photos/800/600'),
                  ),
                  SizedBox(width: 20),
                  Image(
                    image: NetworkImage('https://picsum.photos/800/600'),
                  ),
                  SizedBox(width: 20),
                  Image(
                    image: NetworkImage('https://picsum.photos/800/600'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.map),
              title: Text(
                'Poppins 300',
                style: TextStyle(
                  fontFamily: 'Poppins-Light',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.photo_album),
              title: Text(
                'Poppins 400',
                style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                'Poppins 500',
                style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Poppins 700',
                style: TextStyle(
                  fontFamily: 'Poppins-Bold',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Text('A'),
              ),
              title: Text(
                'Arial',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Image(
                    image: AssetImage('assets/images/david.jpg'),
                  ),
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('assets/images/japan-tumblr.jpg'),
                  ),
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('assets/images/mexico-sunset.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
