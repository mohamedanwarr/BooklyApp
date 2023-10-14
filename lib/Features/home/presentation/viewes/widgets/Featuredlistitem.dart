import 'package:bookyapp/Features/home/presentation/viewes/widgets/ItemOfListContainer.dart';
import 'package:flutter/material.dart';
class Featuredlistitem extends StatelessWidget {
  const Featuredlistitem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return const Padding(
              padding: EdgeInsets.only(left:15),
              child: itemoflist(),
            );
          }),
    );
  }
}