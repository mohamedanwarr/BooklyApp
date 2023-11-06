import 'package:bookyapp/Core/Errors/Failure.dart';
import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/Domain/Repo/HomeRepo.dart';
import 'package:bookyapp/Features/home/data/DataSources/Local_Data_Source.dart';
import 'package:bookyapp/Features/home/data/DataSources/Remote_Data_Sources.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSourcces homeRemoteDataSourcces;
  final HomeLocalDataSourcces homeLocalDataSourcces;

  HomeRepoImpl(
      {required this.homeRemoteDataSourcces,
      required this.homeLocalDataSourcces});

  @override
  Future<Either<Failure, List<BookEntity>>> FetchFeaturedBooks({int pagenum =0 }) async {
    List<BookEntity> books;
    try {
      books = homeLocalDataSourcces.FetchFeaturedBooks(
        pagenum: pagenum
      );
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSourcces.FetchFeaturedBooks(
        pagenum: pagenum
      );
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));

      }
      }


  @override
  Future<Either<Failure, List<BookEntity>>> FetchNewBooks() async {
    List<BookEntity> books;
    try {
      books = homeLocalDataSourcces.FetchNewBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSourcces.FetchNewBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));

    }
  }
  }

