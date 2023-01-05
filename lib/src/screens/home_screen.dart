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
        'imageUrl': "https://loremflickr.com/320/320?random=1",
      },
      {
        'title': "Abdiel Abdizzy",
        'imageUrl': "https://loremflickr.com/320/320?random=2",
      },
    ];

    late List<Map<String, dynamic>> sections = [
      {
        'title': "As tuas mixes mais ouvidas",
        'albums': [
          {
            'title': "Mix de Abdiel Abdizzy",
            'imageUrl': "https://loremflickr.com/320/320?random=1",
            'authors': "Zona 5, Kelson Most Wanted, Edgar Domingos",
          },
          {
            'title': "Mix de Rowan Drake",
            'imageUrl': "https://loremflickr.com/320/320?random=5",
            'authors': "David Kusher, Hayd, Caleb Hearn e mais",
          },
          {
            'title': "Mix Trap",
            'imageUrl': "https://loremflickr.com/320/320?random=3",
            'authors': "52prince, 21 Savage, Lil Pump, Cardi B",
          },
          {
            'title': "Mix de Gerilson",
            'imageUrl': "https://loremflickr.com/320/320?random=4",
            'authors': "Gerilson Insrael, Landric Anselmo Ralph",
          },
        ],
      },
      {
        'title': "Feito para Efrain Mário",
        'albums': [
          {
            'title': "Daily Mix 1",
            'imageUrl': "https://loremflickr.com/320/320?random=3",
            'authors': "David Kusher, Hayd, Caleb Hearn e mais",
          },
          {
            'title': "Mix de Rowan Drake",
            'imageUrl': "https://loremflickr.com/320/320?random=2",
            'authors': "David Kusher, Hayd, Caleb Hearn e mais",
          },
          {
            'title': "Mix de Rowan Drake",
            'imageUrl': "https://loremflickr.com/320/320?random=4",
            'authors': "David Kusher, Hayd, Caleb Hearn e mais",
          },
          {
            'title': "Mix de Rowan Drake",
            'imageUrl': "https://loremflickr.com/320/320?random=2",
            'authors': "David Kusher, Hayd, Caleb Hearn e mais",
          },
        ],
      },
      // {
      //   'title': "Reproduzido recentemente",
      //   'albums': [
      //     {
      //       'title': "As tuas mixes mais ouvidas",
      //       'imageUrl': "https://loremflickr.com/320/320?random=3",
      //       'authors': "section 1",
      //       "isTitleOnly": true
      //     },
      //     {
      //       'title': "As tuas mixes mais ouvidas",
      //       'imageUrl': "https://loremflickr.com/320/320?random=3",
      //       'authors': "section 1",
      //       "isTitleOnly": true
      //     },
      //     {
      //       'title': "As tuas mixes mais ouvidas",
      //       'imageUrl': "https://loremflickr.com/320/320?random=3",
      //       'authors': "section 1",
      //       "isTitleOnly": true
      //     },
      //   ],
      // },
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 120),
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
          // const Section(
          //   title: "As tuas mixes mais ouvidas",
          //   albums: [1, 2, 3],
          // ),
          // const Section(
          //   title: "Feito para Efrain Mário",
          //   albums: [1, 2, 3],
          // ),
          // const Section(
          //   title: "Reproduzido recentemente",
          //   albums: [1, 2, 3, 4, 5, 6],
          // )
          ...sections
              .map((section) => Section(
                    title: section['title'],
                    albums: section['albums'],
                  ))
              .toList()
        ],
      ),
    );
  }
}
