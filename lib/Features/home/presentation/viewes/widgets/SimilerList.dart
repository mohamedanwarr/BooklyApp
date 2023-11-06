import 'package:bookyapp/Features/home/presentation/viewes/widgets/ItemOfListContainer.dart';
import 'package:flutter/material.dart';
class SimilarListView extends StatelessWidget {
  const SimilarListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.14,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return  Padding(
              padding: EdgeInsets.only(left:10),
              child: customeBookItem(image: '',),
            );
          }),
    );
  }
}
