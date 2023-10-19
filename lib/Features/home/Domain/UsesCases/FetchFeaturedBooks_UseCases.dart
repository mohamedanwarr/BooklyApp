import 'package:bookyapp/Core/Errors/Failure.dart';
import 'package:bookyapp/Features/home/Domain/Entities/entities.dart';
import 'package:bookyapp/Features/home/Domain/Repo/HomeRepo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCases{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCases( this.homeRepo);
  Future<Either<Failure ,List<BookEntity>>> FetchFeaturedBooks(){
    return homeRepo.FetchFeaturedBooks();
  }

}