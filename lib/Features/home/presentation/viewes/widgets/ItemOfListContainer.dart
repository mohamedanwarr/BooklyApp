import 'package:bookyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
class itemoflist extends StatelessWidget {
  const itemoflist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
              image:  const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testimage)
              )
          ),

        ),
      ),
    );
  }
}