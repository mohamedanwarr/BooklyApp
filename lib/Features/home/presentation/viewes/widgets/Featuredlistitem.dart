import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/ItemOfListContainer.dart';
import 'package:bookyapp/presentaion/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListItem extends StatefulWidget {
  const FeaturedListItem({super.key, required this.books});

  final List<BookEntity> books;

  @override
  State<FeaturedListItem> createState() => _FeaturedListItemState();
}

class _FeaturedListItemState extends State<FeaturedListItem> {
  final ScrollController _controller = ScrollController();
  var nextpage = 1;
var loading = false;
  @override
  void initState() {
    super.initState();
    _controller.addListener(_ScrollLisnter);
  }

  void _ScrollLisnter() async {
    var curruntposition = _controller.position.pixels;
    var maxscroll = _controller.position.maxScrollExtent;
    if (curruntposition >= 0.7 * maxscroll) {

      if (!loading) {
        loading=true;
        await BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks(
          pagenum: nextpage++
        );
        loading=false;
      }

    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .31,
      child: ListView.builder(
        controller: _controller,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: customeBookItem(
              image: widget.books[index].image ?? '',
            ),
          );
        },
      ),
    );
  }
}
