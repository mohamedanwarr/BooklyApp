import 'package:bookyapp/Features/home/presentation/viewes/widgets/BestSellerListitem.dart';
import 'package:flutter/material.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0,),
            child: BestSellerListitem(),
          );
        });
  }
}