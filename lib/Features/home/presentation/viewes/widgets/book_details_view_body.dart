import 'package:bookyapp/Features/home/presentation/viewes/widgets/BooksDetailsSection.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/SimilerBooksSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookdetailsBody extends StatelessWidget {
  const BookdetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilerBookSection()
            ],
          ),
        )
      ],
    );
  }
}





