import 'package:bookyapp/Core/Errors/Failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type,  Param>{
  Future<Either<Failure,Type>>Call(Param param );

}
class NoParam {}