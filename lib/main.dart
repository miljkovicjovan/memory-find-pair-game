import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Memory Game'),
        ),
        body: _Grid(),
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  final String source;

  const _Tile({Key? key, required this.source}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ElevatedButton(
          onPressed: null,
          child: Image(image: AssetImage(source)),
        ),
      ),
    );
  }
}

class _Grid extends StatelessWidget {
  var images = [
    [1, 'assets/clown-fish.png'],
    [2, 'assets/lion.png'],
    [3, 'assets/crocodile.png'],
    [4, 'assets/monkey.png'],
    [5, 'assets/parrot.png'],
    [6, 'assets/horse.png'],
    [7, 'assets/clown-fish.png'],
    [8, 'assets/lion.png'],
    [9, 'assets/crocodile.png'],
    [10, 'assets/monkey.png'],
    [11, 'assets/parrot.png'],
    [12, 'assets/horse.png']
  ];

  @override
  Widget build(BuildContext context) {
    images.shuffle();
    return GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.all(20),
      children: [
        _Tile(source: images[0][1] as String),
        _Tile(source: images[1][1] as String),
        _Tile(source: images[2][1] as String),
        _Tile(source: images[3][1] as String),
        _Tile(source: images[4][1] as String),
        _Tile(source: images[5][1] as String),
        _Tile(source: images[6][1] as String),
        _Tile(source: images[7][1] as String),
        _Tile(source: images[8][1] as String),
        _Tile(source: images[9][1] as String),
        _Tile(source: images[10][1] as String),
        _Tile(source: images[11][1] as String),
      ],
    );
  }
}
