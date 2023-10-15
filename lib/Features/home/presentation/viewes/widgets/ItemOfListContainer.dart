// ignore_for_file: camel_case_types

import 'package:bookyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
class customeBookItem extends StatelessWidget {
  const customeBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 2.8/4,
      child: Container(
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(27),
            color: Colors.red,
            image:  const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.testimage)
            )
        ),

      ),
    );
  }
}