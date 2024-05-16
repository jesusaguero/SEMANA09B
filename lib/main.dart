import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Elementos'),
        ),
        body: ListView(
          children: [
            ListItem(
              imagePath: 'assets/images/alimentos/platano.jpeg',
              text: 'Plátano',
              font: 'OpenSans',
            ),
            ListItem(
              imagePath: 'assets/images/animales/mono.jpg',
              text: 'Mono',
              font: 'Lato',
            ),
            ListItem(
              imagePath: 'assets/lugares/selva.jpeg',
              text: 'Selva Peruana',
              font: 'Ubuntu',
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String imagePath;
  final String text;
  final String font;

  const ListItem({
    required this.imagePath,
    required this.text,
    required this.font,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontFamily: font,
          fontSize: 20,
        ),
      ),
    );
  }
}
