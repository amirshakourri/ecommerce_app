import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  final String? imagesUrl;
  const CachedImage({super.key, this.imagesUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imagesUrl ??
            'https://startflutter.ir/api/api/file/equwrpwnez9pvim/dmr9eruk9ewr12o/rectangle_64_2_ACJxwff96d.png',
        errorWidget: (context, url, error) => Container(
          color: Colors.red,
        ),
        placeholder: (context, url) => Container(
          color: Colors.grey,
        ),
      ),
    );
  }
}
