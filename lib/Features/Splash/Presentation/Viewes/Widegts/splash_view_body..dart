import 'package:bookyapp/Core/utils/assets.dart';
import 'package:bookyapp/Features/home/presentation/viewes/Home_view.dart';
import 'package:bookyapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
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
    initSlidingText();
    NaviagtetoHome();
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

  void NaviagtetoHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const Home(),
          transition: Transition.fade, duration: Ktranstion);
    });
  }

  void initSlidingText() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
    slidinganimation.addListener(() {});
  }
}
