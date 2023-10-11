import 'package:bookyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
class SplashViewbody extends StatelessWidget {
  const SplashViewbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(AssetsData.logo,
        width: 300,),
        const SizedBox(height: 20),
        const Text('Read Free Books'
          ,textAlign: TextAlign.center,
          )
      ],

    );
  }
}
