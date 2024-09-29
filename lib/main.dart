import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri'),
        backgroundColor: const Color.fromARGB(255, 58, 143, 183), 
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                deskripsAsset(
                  'asset/Glock17.jpg',
                  'Sbuah poto dari pistol glock 17',
                ),
                deskripsAsset(
                  'asset/fredrik-hellberg-asset.jpg',
                  'hasil render 3d oleh fredrik hellberg',
                ),
                deskripsAsset(
                  'asset/Apple_Cat.jpg',
                  'kucing sedang beristirahat di atas buah apel',
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                deskripsAsset(
                  'asset/download.jpg',
                  'stage Ultrakill',
                ),
                deskripsAsset(
                  'asset/son.jpg',
                  'lukisan the son of man',
                ),
                deskripsAsset(
                  'asset/douje.png',
                  'lukisan tentang wajah',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget deskripsAsset(String lokAsset, String deskripsi) {
  return Expanded(
  child: Column(
    children: [
      Container(
        height: 200,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Image.asset(
          lokAsset,
          fit: BoxFit.cover,
        ),
      ),
      const  SizedBox(height: 10),
      Text(
        deskripsi,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 14.0, color: Colors.black87),
      )
    ],
    ),
  );
}