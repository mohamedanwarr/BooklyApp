class BookEntity{
  final String bookid;
  final String title;
  final String? image;
  final String? authorname;
  final num? price;
  final num? rating;

  BookEntity({required this.bookid,required this.authorname,required  this.price,required this.rating, required this.title, required this.image});
}