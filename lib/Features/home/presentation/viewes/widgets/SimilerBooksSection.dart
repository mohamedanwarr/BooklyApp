import 'package:bookyapp/Core/utils/Styles.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/SimilerList.dart';
import 'package:flutter/material.dart';
class SimilerBookSection extends StatelessWidget {
  const SimilerBookSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text('You can also like',
              style: Styles.textStyle14
                  .copyWith(fontWeight: FontWeight.w600)),
        ),
        const SizedBox(
          height: 16,
        ),
         const Padding(
          padding: EdgeInsets.only(left: 22),
          child: SimilarListView(),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}