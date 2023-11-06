import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/BestSellerListitem.dart';
import 'package:flutter/material.dart';
class BestSellerListViwe extends StatelessWidget {
  const BestSellerListViwe({Key? key, required this.books}) : super(key: key);
  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 30),
            child: BestSellerListitem(
              image: "${books[index].image}",
              maintitle: '${books[index].title}',
              authorname: '${books[index].authorname}',
              price: '${books[index].price}',
            ),
          );
        });
  }
}