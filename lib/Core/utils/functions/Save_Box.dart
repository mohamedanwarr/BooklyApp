import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:hive/hive.dart';

void SaveBooksData(List<BookEntity> books,String BoxName) {
  var box = Hive.box(BoxName);
  box.addAll(books);
}
