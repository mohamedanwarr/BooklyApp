// ignore_for_file: non_constant_identifier_names

import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/constant.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSourcces {
  List<BookEntity> FetchFeaturedBooks();

  List<BookEntity> FetchNewBooks();
}

class HomeRemoteDataSourcceImpl extends HomeLocalDataSourcces {
  @override
  List<BookEntity> FetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(KfeaturedBox);

    return box.values.toList();
  }

  @override
  List<BookEntity> FetchNewBooks() {
  var box = Hive.box<BookEntity>(KNewestBox);
  return box.values.toList();
  }


}
