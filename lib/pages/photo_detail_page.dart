import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class PhotoDetailPage extends StatelessWidget {
  static const route = 'photo';
  final PhotoDetailPageArgs args;
  const PhotoDetailPage({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ExtendedImage.network(
          args.photoUrl,
          mode: ExtendedImageMode.gesture,
        ),
      ),
    );
  }
}

class PhotoDetailPageArgs {
  final String photoUrl;
  const PhotoDetailPageArgs({required this.photoUrl});
}
