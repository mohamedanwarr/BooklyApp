import 'package:bookyapp/Features/home/data/Models/Epubmodel.dart';
import 'package:bookyapp/Features/home/data/Models/pdf%20model.dart';

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Epubpdf? pdf; // Changed to Epubpdf type
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  AccessInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Epubpdf.fromJson(json['pdf']) : null; // Changed to Epubpdf.fromJson
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = country;
    data['viewability'] = viewability;
    data['embeddable'] = embeddable;
    data['publicDomain'] = publicDomain;
    data['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      data['epub'] = epub!.toJson();
    }
    if (pdf != null) {
      data['pdf'] = pdf!.toJson();
    }
    data['webReaderLink'] = webReaderLink;
    data['accessViewStatus'] = accessViewStatus;
    data['quoteSharingAllowed'] = quoteSharingAllowed;
    return data;
  }
}
