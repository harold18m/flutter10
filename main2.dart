import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'category': 'Alimentos', 'name': 'Manzana', 'image': 'assets/images/alimentos/manzana.jpg'},
    {'category': 'Alimentos', 'name': 'Plátano', 'image': 'assets/images/alimentos/platano.jpg'},
    {'category': 'Animales', 'name': 'Perro', 'image': 'assets/images/animales/perro.jpg'},
    {'category': 'Animales', 'name': 'Gato', 'image': 'assets/images/animales/gato.jpg'},
    {'category': 'Lugares', 'name': 'París', 'image': 'assets/images/lugares/paris.jpg'},
    {'category': 'Lugares', 'name': 'Tokio', 'image': 'assets/images/lugares/tokyo.jpg'},
  ];

  TextStyle _getTextStyle(String category) {
    switch (category) {
      case 'Alimentos':
        return TextStyle(fontFamily: 'OpenSans', fontSize: 18);
      case 'Animales':
        return TextStyle(fontFamily: 'Lato', fontSize: 18);
      case 'Lugares':
        return TextStyle(fontFamily: 'Ubuntu', fontSize: 18);
      default:
        return TextStyle(fontSize: 18);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista con Categorías'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            child: ListTile(
              leading: Image.asset(item['image']!),
              title: Text(
                item['name']!,
                style: _getTextStyle(item['category']!),
              ),
              subtitle: Text(item['category']!),
            ),
          );
        },
      ),
    );
  }
}
