import 'package:bookyapp/Core/utils/Widgets/CustomeButton.dart';
import 'package:flutter/material.dart';

class BooksReview extends StatelessWidget {
  const BooksReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
              child: CustomeButton(
            backgroundcolor: Colors.white,
            textcolor: Colors.black,
            text: '19.99€',
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
          )),
          Expanded(
              child: CustomeButton(
            backgroundcolor: Color(0xffEF8262),
            textcolor: Colors.white,
            text: 'Free preview',
            fontSize: 14,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ))
        ],
      ),
    );
  }
}
