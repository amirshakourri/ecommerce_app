import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  final String? imagesUrl;
  final double radius;
  const CachedImage({super.key, this.imagesUrl, this.radius = 0});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
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
