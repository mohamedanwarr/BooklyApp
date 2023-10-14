import 'package:bookyapp/Core/utils/Styles.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/BestSellerListView.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/BestSellerListitem.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/Featuredlistitem.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/custome_appbar.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBar(),
          Featuredlistitem(),
          SizedBox(
            height: 49,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text('Best Seller', style: Styles.textStyle18),
          ),
          SizedBox(
            height: 20,
          ),
        ])),
        SliverFillRemaining(
          child: BestSellerListViwe(),
        )
      ],
    );
  }
}
