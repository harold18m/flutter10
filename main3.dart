
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageGallery(),
    );
  }
}

class ImageGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería de Imágenes de Bob Esponja'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          ImageCard(
            imagePath: 'assets/images/bob.png',
            fontFamily: 'Danfo',
          ),
          ImageCard(
            imagePath: 'assets/images/bob.jpg',
            fontFamily: 'Jacquard12',
          ),
          ImageCard(
            imagePath: 'assets/images/bob.svg',
            fontFamily: 'Montserrat',
            isSvg: true,
          ),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String fontFamily;
  final bool isSvg;

  const ImageCard({
    required this.imagePath,
    required this.fontFamily,
    this.isSvg = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: isSvg
                ? SvgPicture.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Imagen de Bob Esponja',
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
