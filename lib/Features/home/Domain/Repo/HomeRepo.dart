import 'package:bookyapp/Features/home/Domain/Entities/entities.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> FetchFeaturedBooks();

  Future<List<BookEntity>> FetchNewBooks();
}
