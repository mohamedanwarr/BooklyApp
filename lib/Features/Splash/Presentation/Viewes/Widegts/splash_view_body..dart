import 'package:bookyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'slidingtext.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({Key? key}) : super(key: key);

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
    slidinganimation.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: 300,
        ),
        const SizedBox(height: 10),
        AnimatedBuilder(
          animation: slidinganimation,
          builder: (context, _) {
            return SlidingText(slidinganimation: slidinganimation);
          },
        )
      ],
    );
  }
}
