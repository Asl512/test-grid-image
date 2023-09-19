import 'package:flutter/material.dart';
import 'package:test_grid_images/data/models/character.dart';
import 'package:test_grid_images/ui/resurses/colors.dart';
import 'package:test_grid_images/ui/widgets/cached_image.dart';
import 'package:test_grid_images/ui/widgets/icon_gender.dart';
import 'package:test_grid_images/ui/widgets/icon_status.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  final Function()? onTap;

  const CharacterCard({
    Key? key,
    required this.character,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          CachedImage(
            radius: 10,
            url: character.image,
            size: 300,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconStatus(status: character.status),
                    const SizedBox(width: 10),
                    IconGender(gender: character.gender),
                  ],
                ),
                const Spacer(),
                Text(
                  character.name,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: AppColor.backgroundColor,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
