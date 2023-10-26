// ignore_for_file: non_constant_identifier_names

import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';

abstract class HomeLocalDataSourcces {
  List<BookEntity> FetchFeaturedBooks();

  List<BookEntity> FetchNewBooks();
}

class HomeRemoteDataSourcceImpl extends HomeLocalDataSourcces {

  @override
  List<BookEntity> FetchFeaturedBooks() {
    // TODO: implement FetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> FetchNewBooks() {
    // TODO: implement FetchNewBooks
    throw UnimplementedError();
  }


}
