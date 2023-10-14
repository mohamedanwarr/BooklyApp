import 'package:bookyapp/Features/home/presentation/viewes/widgets/BestSellerListitem.dart';
import 'package:flutter/material.dart';
class BestSellerListViwe extends StatelessWidget {
  const BestSellerListViwe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder:(context,int index){
          return  Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 30),
            child: BestSellerListitem(),
          );

        });
  }
}