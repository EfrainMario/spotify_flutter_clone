import 'package:flutter/material.dart';

class MusicPlayerDialog extends StatelessWidget {
  const MusicPlayerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Dialog(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.indigoAccent,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Reproduzindo',
                style: textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 24),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey[900],
            ),
            child: Icon(
              Icons.album,
              size: 192,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    ));
  }
}
