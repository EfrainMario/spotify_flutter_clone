import 'package:flutter/material.dart';
import 'package:flutter3_test/src/shared/album_large.dart';

class Section extends StatelessWidget {
  final String title;
  final bool isTitleOnly;
  final List<dynamic> albums;

  const Section({
    super.key,
    required this.title,
    required this.albums,
    this.isTitleOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: theme.textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: albums.length,
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
              itemBuilder: (context, index) {
                var album = albums[index];

                return AlbumLarge(
                  authors: album['authors'] ?? '',
                  title: album['title'] ?? '',
                  imageUrl: album['imageUrl'] ?? '',
                  isTitleOnly: isTitleOnly,
                );
              }),
        ),
      ],
    );
  }
}
