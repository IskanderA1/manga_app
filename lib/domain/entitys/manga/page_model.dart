import 'package:equatable/equatable.dart';

class PageModel extends Equatable {
  final String id;
  final String link;
  final int page;

  PageModel({
    required this.id,
    required this.link,
    required this.page,
  });

  factory PageModel.fromJson(dynamic json) {
    return PageModel(
      id: json['id'].toString(),
      link: json['link'],
      page: json['page'],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link'] = link;
    map['page'] = page;
    return map;
  }

  @override
  List<Object?> get props => [
        id,
        link,
        page,
      ];
}
