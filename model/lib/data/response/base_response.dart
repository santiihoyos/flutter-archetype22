class BaseResponse {
  ///default empty constructor
  BaseResponse();

  ///Parses Map<String, dynamic> into BaseResponse subtype.
  BaseResponse.fromJson(Map<String, dynamic>? json) {}

  /// convert to encode Json objet
  Map<String, dynamic>? toJson() => null;
}

///Base class to manage paginated responses
abstract class BasePaginatedResponse<T extends BaseResponse> extends BaseResponse {
  ///pagination info
  abstract PagingInfo info;

  ///contents results.
  abstract List<T> results;
}

class PagingInfo extends BaseResponse {
  final int? count;
  final int pages;
  final int? next;
  final int? prev;

  PagingInfo({
    this.count,
    required this.pages,
    this.next,
    this.prev,
  }) : super();

  factory PagingInfo.fromJson(Map<String, dynamic> json) {
    return PagingInfo(
      count: json["count"],
      pages: json["pages"],
      next: json["next"],
      prev: json["prev"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "count": this.count,
      "pages": this.pages,
      "next": this.next,
      "prev": this.prev,
    };
  }
}
