import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ShowLargeImageWithPhotoView extends StatelessWidget {
  final String imageUrl; // Replace with your image URL

  const ShowLargeImageWithPhotoView({Key? key, required this.imageUrl})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PhotoView(
        imageProvider: NetworkImage(imageUrl),
        minScale: PhotoViewComputedScale.contained * 0.8,
        maxScale: PhotoViewComputedScale.covered * 1.8,
        initialScale: PhotoViewComputedScale.contained,
      ),
    );
  }
}
