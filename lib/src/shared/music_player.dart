import 'package:flutter/material.dart';
import 'package:flutter3_test/src/shared/music_player/music_dialog.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    onPlayerClick(context) {
      showDialog(
          context: context, builder: (context) => const MusicPlayerDialog());
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.grey[900],
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      onPlayerClick(context);
                    },
                    child: Icon(
                      Icons.album,
                      color: Colors.grey[800],
                      size: 40,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        onPlayerClick(context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sucucu",
                            style: textTheme.caption!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Edgar Domingos",
                            style: textTheme.caption,
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    iconSize: 20,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.device_hub,
                    ),
                  ),
                  IconButton(
                    iconSize: 20,
                    color: Colors.green,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                    ),
                  ),
                  IconButton(
                    iconSize: 20,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.pause_rounded,
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: LinearProgressIndicator(
              value: .5,
              minHeight: 2,
              backgroundColor: Colors.grey[800],
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );

    //  ListTile(
    //   dense: true,
    //   leading: const Icon(Icons.album),
    //   title: const Text("Sucucu"),
    //   subtitle: const Text("Edgar Domingos"),
    //   trailing: SizedBox(
    //     width: 80,
    //     child: Row(
    //       children: [
    //         IconButton(
    //           iconSize: 20,
    //           onPressed: () {},
    //           icon: const Icon(
    //             Icons.device_hub,
    //           ),
    //         ),
    //         IconButton(
    //           iconSize: 20,
    //           color: Colors.green,
    //           onPressed: () {},
    //           icon: const Icon(
    //             Icons.favorite,
    //           ),
    //         ),
    //         IconButton(
    //           iconSize: 20,
    //           onPressed: () {},
    //           icon: const Icon(
    //             Icons.pause_rounded,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
  }
}
