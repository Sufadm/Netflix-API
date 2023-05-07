import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/models/trending/trending.dart';
part 'pages.g.dart';

@JsonSerializable()
class Pages {
  int? page;
  List<Movies>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Pages({this.page, this.results, this.totalPages, this.totalResults});

  factory Pages.fromJson(Map<String, dynamic> json) => _$PagesFromJson(json);

  Map<String, dynamic> toJson() => _$PagesToJson(this);
}
