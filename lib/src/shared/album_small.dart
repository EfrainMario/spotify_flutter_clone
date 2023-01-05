import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AlbumSmall extends StatelessWidget {
  final String imageUrl;
  final String title;

  const AlbumSmall({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                color: Colors.primaries[3],
                margin: const EdgeInsets.only(right: 8),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.caption?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
