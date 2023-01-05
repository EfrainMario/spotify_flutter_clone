import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.only(top: 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Row(
        // backgroundColor: Colors.transparent,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (() {}),
            child: SizedBox(
              width: 48,
              height: 48,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.home_filled,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Início",
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.search_outlined,
                color: Color.fromARGB(255, 211, 211, 211),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Procura",
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: const Color.fromARGB(255, 211, 211, 211),
                        fontSize: 10,
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                MdiIcons.bookshelf,
                color: Color.fromARGB(255, 211, 211, 211),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "A tua Biblioteca",
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: const Color.fromARGB(255, 211, 211, 211),
                        fontSize: 10,
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                MdiIcons.spotify,
                color: Color.fromARGB(255, 211, 211, 211),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("Premium",
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: const Color.fromARGB(255, 211, 211, 211),
                          fontSize: 10,
                        )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
