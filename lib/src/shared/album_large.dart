import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AlbumLarge extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String authors;
  final bool isTitleOnly;

  const AlbumLarge(
      {super.key,
      required this.imageUrl,
      required this.authors,
      required this.title,
      this.isTitleOnly = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 142,
      child: Column(
        children: [
          Container(
            color: Colors.blueGrey,
            width: 142,
            height: 142,
            margin: const EdgeInsets.only(bottom: 8),
            child: Stack(
              clipBehavior: Clip.antiAlias,
              alignment: Alignment.bottomLeft,
              children: [
                // Container(color: Colors.indigo),
                CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                Container(
                  color: Colors.black45,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(.87))),
                  ),
                )
              ],
            ),
          ),
          Text(
            authors,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
