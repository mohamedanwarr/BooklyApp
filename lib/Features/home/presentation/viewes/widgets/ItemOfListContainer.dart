// ignore_for_file: camel_case_types

import 'package:bookyapp/Core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class customeBookItem extends StatelessWidget {
  const customeBookItem({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 2.6/4,
      child:  ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(imageUrl: '$image',fit: BoxFit.fill,))
         ,
    );
  }
}