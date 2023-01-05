import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      expandedHeight: 140,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0,
      leadingWidth: double.infinity,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 24,
        ),
        child: Text(
          "Boa tarde",
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      title: Row(children: [
        Chip(
          label: const Text("Música"),
          labelStyle: Theme.of(context)
              .textTheme
              .caption
              ?.copyWith(color: Colors.white),
        ),
        const SizedBox(width: 10),
        Chip(
            label: const Text("Podcasts e programas"),
            labelStyle: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: Colors.white)),
      ]),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(MdiIcons.bellOutline),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.alarm_on_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(MdiIcons.cogOutline),
        ),
        const SizedBox(width: 8)
      ],
    );
  }
}
