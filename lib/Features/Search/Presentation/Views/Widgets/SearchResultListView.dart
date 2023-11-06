import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/BestSellerListitem.dart' show BestSellerListitem;
import 'package:flutter/material.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key, required this.books}) : super(key: key);
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: books.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, int index) {
          return  Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0,),
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