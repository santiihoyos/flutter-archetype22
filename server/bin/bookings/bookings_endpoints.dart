import 'dart:convert';
import 'package:model/data/response/base_response.dart';
import 'package:model/data/response/booking/booking_response.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

const bookingsUrl = "/bookings";

extension AddBookingEndpoints on Router {
  Router addBookingEndpoints() {
    get(bookingsUrl, _getBookings);
    post(bookingsUrl, _postBooking);
    return this;
  }
}

int log = 0;

/// returns all bookings for a date
Response _getBookings(final Request request) {
  //maybe parse request body using Request models into model package.
  log++;
  final params = request.requestedUri.queryParameters;
  var page = 0;
  if (params.keys.contains("page") && (params["page"]?.isNotEmpty ?? false)) {
    page = int.tryParse(params["page"]!) ?? 0;
  }
  var pageSize = 10;
  if (params.keys.contains("pageSize") && (params["pageSize"]?.isNotEmpty ?? false)) {
    pageSize = int.tryParse(params["pageSize"]!) ?? 10;
  }
  var totalBookings = 100;
  var totalPages = totalBookings / pageSize + (totalBookings % pageSize > 0 ? 1 : 0);
  if (log % 1000 == 0) {
    print("log $log");
  }
  return Response.ok(
      jsonEncode(BookingsResponse(
        info: PagingInfo(
          prev: 0,
          next: (page + 1) < totalPages ? (page + 1) : 0,
          count: totalBookings,
          pages: 1,
        ),
        results: [
          BookingResponse(
            name: "Santiago",
            description: "cut",
            startDataTime: DateTime.now().add(Duration(seconds: 10)),
          ),
          BookingResponse(
            name: "Javi",
            description: "cut, wash and beard...",
            startDataTime: DateTime.now().add(Duration(seconds: 20)),
          ),
          BookingResponse(
            name: "Claire",
            description: "color nails",
            startDataTime: DateTime.now().add(Duration(seconds: 30)),
          ),
          BookingResponse(
            name: "Lila",
            description: "color",
            startDataTime: DateTime.now().add(Duration(seconds: 40)),
          ),
        ],
      ).toJson()),
      headers: {"Content-Type": "application/json"});
}

/// returns all bookings for a date
Response _postBooking(final Request request) {
  return Response.forbidden("You must log to write bookings.");
}
