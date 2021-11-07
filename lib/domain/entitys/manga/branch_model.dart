import 'package:equatable/equatable.dart';
import 'package:manga_app/domain/entitys/manga/publisher_model.dart';

/// Ветвь
class BranchModel extends Equatable {
  const BranchModel({
    required this.id,
    required this.img,
    required this.publishers,
    required this.subscribed,
    required this.totalVotes,
    required this.countChapters,
  });

  factory BranchModel.fromJson(dynamic json) {
    return BranchModel(
      id: json['id'],
      img: json['img'],
      publishers: json['publishers'] != null
          ? List<PublisherModel>.of(
              (json['publishers'] as List)
                  .map((e) => PublisherModel.fromJson(e)),
            )
          : [],
      subscribed: json['subscribed'],
      totalVotes: json['total_votes'],
      countChapters: json['count_chapters'],
    );
  }

  final int id;
  final String img;
  final List<PublisherModel> publishers;
  final bool? subscribed;
  final int? totalVotes;
  final int? countChapters;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['img'] = img;
    map['publishers'] = publishers.map((v) => v.toJson()).toList();
    map['subscribed'] = subscribed;
    map['total_votes'] = totalVotes;
    map['count_chapters'] = countChapters;
    return map;
  }

  @override
  List<Object?> get props => [
        id,
        img,
        publishers,
        subscribed,
        totalVotes,
        countChapters,
      ];
}
