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
      height: 100,
      width: 100,
      child: ElevatedButton(
          onPressed: null, child: Image(image: AssetImage(source))),
    );
  }
}

class _Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: const [
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
        _Tile(source: 'assets/clown-fish.png'),
      ],
    );
  }
}
