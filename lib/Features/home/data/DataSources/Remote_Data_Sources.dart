// ignore_for_file: non_constant_identifier_names

import 'package:bookyapp/Core/utils/ApiServices.dart';
import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/data/Models/Books%20Model.dart';

abstract class HomeRemoteDataSourcces {
  Future<List<BookEntity>> FetchFeaturedBooks();

  Future<List<BookEntity>> FetchNewBooks();
}

class HomeRemoteDataSourcceImpl extends HomeRemoteDataSourcces {
  late final ApiServices apiServices;

  @override
  Future<List<BookEntity>> FetchFeaturedBooks() async {
    var data = await apiServices.get(
        endpoint: 'volumes?q=Harry Potter &Filtering =free-ebooks');
    List<BookEntity> books = getBooksList(data);
  return books;
  }



  @override
  Future<List<BookEntity>> FetchNewBooks() {

    Future<List<BookEntity>> FetchFeaturedBooks() async {
      var data = await apiServices.get(
          endpoint: 'volumes?q=Harry Potter &Filtering =free-ebooks&sorting=newest');
      List<BookEntity> books = getBooksList(data);
      return books;
    }


    throw UnimplementedError();
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BooksModels.fromJson(bookMap));
    }
    return books;
  }
}
