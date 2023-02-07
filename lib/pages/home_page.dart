import 'package:art/pages/photo_detail_page.dart';
import 'package:flutter/material.dart';

import '../model/photos.dart';

class HomePage extends StatelessWidget {
  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Column(
            children: const [
              Text(
                'ART',
                style: TextStyle(
                  letterSpacing: 10,
                ),
              ),
              Text(
                "Dove l'uomo tocca il cielo",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: photos.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              PhotoDetailPage.route,
              arguments: PhotoDetailPageArgs(
                photoUrl: photos[index],
              ),
            );
          },
          child: Image.network(
            photos[index],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
