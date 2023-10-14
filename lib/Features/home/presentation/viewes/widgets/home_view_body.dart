import 'package:bookyapp/Core/utils/Styles.dart';
import 'package:bookyapp/Core/utils/assets.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/BestSellerListitem.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/Featuredlistitem.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/custome_appbar.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        Featuredlistitem(),
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text('Best Seller', style: Styles.textStyle18),
        ),
        BestSellerListitem()
      ],
    );
  }
}
