import 'package:bookyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:svg_flutter/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            height: 18.1,
            AssetsData.logo,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FlutterIcons.search_oct,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
