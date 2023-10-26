import 'package:hive/hive.dart';
part 'book_entitiy.g.dart';
@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookid;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? image;
  @HiveField(3)
  final String? authorname;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rating;

  BookEntity({required this.bookid,required this.authorname,required  this.price,required this.rating, required this.title, required this.image});
}