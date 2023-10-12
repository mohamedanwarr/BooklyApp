import 'package:bookyapp/Features/home/presentation/viewes/widgets/custome_appbar.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CustomAppBar(),
        itemoflist()
      ],
    );
  }
}


