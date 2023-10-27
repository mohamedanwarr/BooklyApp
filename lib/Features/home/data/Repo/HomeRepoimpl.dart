import 'package:bookyapp/Core/Errors/Failure.dart';
import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/Domain/Repo/HomeRepo.dart';
import 'package:bookyapp/Features/home/data/DataSources/Local_Data_Source.dart';
import 'package:bookyapp/Features/home/data/DataSources/Remote_Data_Sources.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSourcces homeRemoteDataSourcces;
  final HomeLocalDataSourcces homeLocalDataSourcces;

  HomeRepoImpl(
      {required this.homeRemoteDataSourcces,
      required this.homeLocalDataSourcces});

  @override
  Future<Either<Failure, List<BookEntity>>> FetchFeaturedBooks() async {
    try {
      var bookslist = homeLocalDataSourcces.FetchFeaturedBooks();
      if (bookslist.isNotEmpty) {
        return right(bookslist);
      }
      var books = await homeRemoteDataSourcces.FetchFeaturedBooks();
      return right(books);
    } on Exception catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> FetchNewBooks() async {
    try {
      var booklist = homeLocalDataSourcces.FetchNewBooks();
      if (booklist.isNotEmpty) {
        return right(booklist);
      }
      var books = await homeRemoteDataSourcces.FetchNewBooks();
      return right(books);
    } on Exception catch (e) {
      return left(Failure());
    }
  }
}
