import 'package:bookyapp/Core/utils/Styles.dart';
import 'package:bookyapp/Core/utils/Widgets/CustomeButton.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/BookRating.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/BookReview.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/ItemOfListContainer.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/book_details_view_body.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/customebookdetailsappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookdetailsBody extends StatelessWidget {
  const BookdetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomeBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .19,
            ),
            child: const customeBookItem(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('The Jungle Book', style: Styles.textStyle30),
          const SizedBox(
            height: 4,
          ),
          Text('Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                color: const Color(0xff707070).withOpacity(1),
                fontStyle: FontStyle.italic,
              )),
          const SizedBox(
            height: 14,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [BookRatingItem()],
          ),
          const SizedBox(
            height: 40,
          ),
          const BooksReview()
        ],
      ),
    );
  }
}


