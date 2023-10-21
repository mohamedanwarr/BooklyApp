import 'package:bookyapp/Features/home/Domain/Entities/entities.dart';
import 'package:bookyapp/Features/home/data/Models/AccessInfo.dart';
import 'package:bookyapp/Features/home/data/Models/SaleInfo%20model.dart';
import 'package:bookyapp/Features/home/data/Models/SearchInfo%20model%20mod.dart';
import 'package:bookyapp/Features/home/data/Models/VolumeInfo%20model.dart';

class BooksModels extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BooksModels(
      {this.kind,
      this.id,
      this.etag,
      this.selfLink,
      this.volumeInfo,
      this.saleInfo,
      this.accessInfo,
      this.searchInfo})
      : super(
            bookid: "$id",
            authorname: volumeInfo?.authors?.first ?? ' No Name',
            price: 0,
            rating: volumeInfo!.maturityRating,
            title: "$volumeInfo.title",
            image: volumeInfo?.imageLinks?.thumbnail ?? '');

  factory BooksModels.fromJson(Map<String, dynamic> json) => BooksModels(
        kind: json['kind'] as String,
        id: json['id'],
        etag: json['etag'],
        selfLink: json['selfLink'],
        volumeInfo: json['volumeInfo'] != null
            ? VolumeInfo.fromJson(json['volumeInfo'])
            : null,
        accessInfo: json['accessInfo'] != null
            ? AccessInfo.fromJson(json['accessInfo'])
            : null,
        saleInfo: json['saleInfo'] != null
            ? SaleInfo.fromJson(json['saleInfo'])
            : null,
        searchInfo: json['searchInfo'] != null
            ? SearchInfo.fromJson(json['searchInfo'])
            : null,
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kind'] = kind;
    data['id'] = id;
    data['etag'] = etag;
    data['selfLink'] = selfLink;
    if (volumeInfo != null) {
      data['volumeInfo'] = volumeInfo!.toJson();
    }
    if (saleInfo != null) {
      data['saleInfo'] = saleInfo!.toJson();
    }
    if (accessInfo != null) {
      data['accessInfo'] = accessInfo!.toJson();
    }
    if (searchInfo != null) {
      data['searchInfo'] = searchInfo!.toJson();
    }
    return data;
  }
}
