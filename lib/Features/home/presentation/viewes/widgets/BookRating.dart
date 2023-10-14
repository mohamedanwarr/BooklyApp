import 'package:bookyapp/Core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FlutterIcons.star_ant,
          color: Color(0xffFFDD4F),
          size: 20,
        ),
        const SizedBox(
          width: 3,
        ),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(
          width: 9,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
