import 'package:flutter/material.dart';

import '../shared/album_small.dart';
import '../shared/section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late List<Map<String, String>> albumsSmall = [
      {
        'title': "Super Fita",
        'imageUrl': "",
      },
      {
        'title': "Abdiel Abdizzy",
        'imageUrl': " ",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: albumsSmall
                .map(
                  (e) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: AlbumSmall(
                        title: e['title'] ?? "Album title",
                        imageUrl: e['imageUrl'] ?? " ",
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 12),
          const Section(
            title: "As tuas mixes mais ouvidas",
            albums: [1, 2, 3],
          ),
          const Section(
            title: "Feito para Efrain Mário",
            albums: [1, 2, 3],
          ),
          const Section(
            title: "Reproduzido recentemente",
            albums: [1, 2, 3, 4, 5, 6],
          )
        ],
      ),
    );
  }
}
