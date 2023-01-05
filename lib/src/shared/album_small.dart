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
              ),
              Text(
                title,
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
