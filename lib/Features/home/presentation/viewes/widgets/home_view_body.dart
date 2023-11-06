import 'package:bookyapp/Core/utils/Styles.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/BestSellerListBlocBuilder.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/Featured_listitem_Bloc_builder.dart';
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
              FeaturedlistitemBlocConsumer(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(
                height: 10,
              ),
            ])),
        SliverFillRemaining(
          child: BestSellerListBlocBuilder(),
        )
      ],
    );
  }
}


