import 'dart:convert';

import 'package:model/data/response/base_response.dart';

class BookingsResponse extends BasePaginatedResponse<BookingResponse> {
  @override
  PagingInfo info;

  @override
  List<BookingResponse> results;

  BookingsResponse({
    required this.info,
    required this.results,
  });

  factory BookingsResponse.fromJson(Map<String, dynamic> json) {
    return BookingsResponse(
      info: PagingInfo.fromJson(json["info"]),
      results: (jsonDecode(json["results"]) as List<dynamic>)
          .map((e) => BookingResponse.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "info": this.info,
      "results": jsonEncode(this.results),
    };
  }
}

class BookingResponse extends BaseResponse {
  String name;
  String description;
  DateTime startDataTime;

  BookingResponse({
    required this.name,
    required this.description,
    required this.startDataTime,
  });

  factory BookingResponse.fromJson(Map<String, dynamic> json) {
    return BookingResponse(
      name: json["name"],
      description: json["description"],
      startDataTime: DateTime.parse(json["startDataTime"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": this.name,
      "description": this.description,
      "startDataTime": this.startDataTime.toIso8601String(),
    };
  }
}
