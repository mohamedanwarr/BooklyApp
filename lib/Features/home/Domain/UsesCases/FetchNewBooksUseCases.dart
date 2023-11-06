import 'package:bookyapp/Core/Errors/Failure.dart';
import 'package:bookyapp/Core/Errors/Use_Case/use_case.dart';
import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/Domain/Repo/HomeRepo.dart';
import 'package:dartz/dartz.dart';

class FetchNewBooksUseCases extends UseCase<List<BookEntity>,NoParam>{
  final HomeRepo homeRepo;

  FetchNewBooksUseCases(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> Call([NoParam ?param])async {
   return await homeRepo.FetchNewBooks();

  }

}
