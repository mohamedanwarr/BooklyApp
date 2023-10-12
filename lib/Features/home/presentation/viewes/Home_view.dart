import 'package:bookyapp/Features/home/presentation/viewes/widgets/home_view_body.dart' show Homeviewbody;
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Homeviewbody(),

    );
  }
}
