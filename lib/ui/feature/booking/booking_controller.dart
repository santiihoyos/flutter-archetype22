import 'package:flutter_poc/base/ui/base_controller.dart';
import 'package:flutter_poc/data/booking/booking_api.dart';
import 'package:get/get.dart';
import 'package:model/entity/bookings/booking.dart';

class BookingController extends BaseController {
  final BookingApi _api;

  /// page size
  static var pageSize = 10.obs;

  /// current bookings
  var bookings = List<Booking>.empty().obs;

  /// current page
  var page = 0;

  BookingController(this._api);

  /// return next requested bookings with
  /// applied filters.
  void loadBookings() async {
    try {
      final response = await _api.getBookings(page, pageSize.value);
      page++;
      bookings.clear();
      bookings.addAll(response.results
          .map(
            (e) =>
            Booking(
              name: e.name,
              description: e.description,
              startDataTime: e.startDataTime,
            ),
      ).toList());
    } catch (ex) {
      error.call(ControllerError(
        message: "Comprueba que el servidor local esta arrancado!"
      ));
    }
  }
}
