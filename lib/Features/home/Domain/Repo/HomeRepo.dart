import 'package:bookyapp/Core/Errors/Failure.dart';
import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> FetchFeaturedBooks();

  Future<Either<Failure, List<BookEntity>>> FetchNewBooks();
}
