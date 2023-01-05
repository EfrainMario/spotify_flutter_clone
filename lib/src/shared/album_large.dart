import 'package:flutter/material.dart';

class AlbumLarge extends StatelessWidget {
  const AlbumLarge({super.key});

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
                Container(color: Colors.indigo),
                Container(
                  color: Colors.black12,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Mix de Abdiel Abdizzy",
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
            "Zona 5, Kelson Most Wanted, Edgar Domingos",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
