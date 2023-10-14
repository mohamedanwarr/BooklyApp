import 'package:bookyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
class BestSellerListitem extends StatelessWidget {
  const BestSellerListitem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6/4,
            child: Container(
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image:  const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testimage)
                  )
              ),

            ),
          )
        ],
      ),
    );
  }
}