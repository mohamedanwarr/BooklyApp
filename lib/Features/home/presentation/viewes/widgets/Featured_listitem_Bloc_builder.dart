import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/Featuredlistitem.dart';
import 'package:bookyapp/presentaion/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedlistitemBlocConsumer extends StatefulWidget {
  const FeaturedlistitemBlocConsumer({
    super.key,
  });

  @override
  State<FeaturedlistitemBlocConsumer> createState() =>
      _FeaturedlistitemBlocConsumerState();
}

class _FeaturedlistitemBlocConsumerState
    extends State<FeaturedlistitemBlocConsumer> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit,FeaturedBooksState>(
      listener: (context, state)
      {
      if(state is FeatureBooksSucsses){
        books.addAll(state.books);
      }
      if(state is FeaturedBooksPaginationFailure){
        ScaffoldMessenger.of(context).showSnackBar(builderrorSnackBar(state));
      }

      },
      builder: (context, state) {
        return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
          builder: (context, state) {
            if (state is FeatureBooksSucsses ||
                state is FeaturedBooksPaginationLoading||state is FeaturedBooksPaginationFailure) {
              return FeaturedListItem(
                books: books,
              );
            } else if (state is FeaturedBooksFailure) {
              return Text(state.errorMessage);
            }
            return const CircularProgressIndicator();
          },
        );
      },
    );
  }

  SnackBar builderrorSnackBar(FeaturedBooksPaginationFailure state) {
    return SnackBar(
        content: Text(
          state.errorMessage,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        duration: Duration(seconds: 3),
      );
  }
}
