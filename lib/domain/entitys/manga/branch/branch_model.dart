import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:manga_app/domain/entitys/manga/publisher/publisher_model.dart';

part 'branch_model.freezed.dart';

part 'branch_model.g.dart';

@freezed
class BranchModel with _$BranchModel {
  @HiveType(typeId: 1, adapterName: 'BranchModelAdapter')
  const factory BranchModel({
    @HiveField(0) required int id,
    @HiveField(1) required String img,
    @HiveField(2) @Default([]) List<PublisherModel> publishers,
    @HiveField(3) required bool? subscribed,
    @HiveField(4) @JsonKey(name: 'total_votes') required int? totalVotes,
    @HiveField(5) @JsonKey(name: 'count_chapters') required int? countChapters,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) => _$BranchModelFromJson(json);
}

// /// Ветвь
// @JsonSerializable()
// class BranchModel extends Equatable {
//   final int id;
//   final String img;
//   final List<PublisherModel> publishers;
//   final bool? subscribed;
//   @JsonKey(name: 'total_votes')
//   final int? totalVotes;
//   @JsonKey(name: 'count_chapters')
//   final int? countChapters;
//
//   const BranchModel({
//     required this.id,
//     required this.img,
//     required this.publishers,
//     required this.subscribed,
//     required this.totalVotes,
//     required this.countChapters,
//   });
//
//   factory BranchModel.fromJson(dynamic json) {
//     return BranchModel(
//       id: json['id'],
//       img: json['img'],
//       publishers: json['publishers'] != null
//           ? List<PublisherModel>.of(
//               (json['publishers'] as List).map((e) => PublisherModel.fromJson(e)),
//             )
//           : [],
//       subscribed: json['subscribed'],
//       totalVotes: json['total_votes'],
//       countChapters: json['count_chapters'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     map['img'] = img;
//     map['publishers'] = publishers.map((v) => v.toJson()).toList();
//     map['subscribed'] = subscribed;
//     map['total_votes'] = totalVotes;
//     map['count_chapters'] = countChapters;
//     return map;
//   }
// }
