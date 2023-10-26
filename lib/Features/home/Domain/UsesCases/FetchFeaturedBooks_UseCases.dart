import 'package:bookyapp/Core/Errors/Failure.dart';
import 'package:bookyapp/Core/Errors/Use_Case/use_case.dart';
import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/Domain/Repo/HomeRepo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCases extends UseCase<List<BookEntity>,NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCases(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> Call([NoParam? param]) async {
    // TODO: implement Call
   await homeRepo.FetchFeaturedBooks();
    throw UnimplementedError();
  }
}
