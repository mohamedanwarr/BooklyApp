// ignore_for_file: non_constant_identifier_names

import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/constant.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSourcces {
  List<BookEntity> FetchFeaturedBooks({int pagenum = 0});

  List<BookEntity> FetchNewBooks();
}

class HomeLocalDataSourcceImpl extends HomeLocalDataSourcces {
  @override
  List<BookEntity> FetchFeaturedBooks({int pagenum = 0}) {
    int startindex = pagenum * 10;
    int Endindex = (pagenum + 1) * 10;
    var box = Hive.box<BookEntity>(KfeaturedBox);
    int length = box.length;
    if (startindex >= length || Endindex > length) {
      return [];
    }
    return box.values.toList().sublist(startindex, Endindex);
  }

  @override
  List<BookEntity> FetchNewBooks() {
  var box = Hive.box<BookEntity>(KNewestBox);
  return box.values.toList();
  }


}
