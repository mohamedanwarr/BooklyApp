import 'package:bookyapp/Core/utils/AppRouter.dart';
import 'package:bookyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:svg_flutter/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30.0, right:  30.0,top: 5,bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            height: 18.1,
            AssetsData.logo,
          ),
          IconButton(
            onPressed: () {
            GoRouter.of(context).push(AppRouter.KSearchView);
            },
            icon: const Icon(
              FlutterIcons.search_oct,
              size: 22,
            ),
          )
        ],
      ),
    );
  }
}
