import 'package:flutter_poc/base/ui/base_controller.dart';
import 'package:flutter_poc/base/ui/base_page.dart';
import 'package:flutter_poc/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'booking_controller.dart';

class BookingPage extends BasePage<BookingController> {
  const BookingPage({
    Key? key,
    required BookingController controller,
  }) : super(key: key, controller: controller);

  @override
  State createState() => _BookingPageState();
}

class _BookingPageState extends BaseState<BookingPage> {
  @override
  void initState() {
    widget.controller.loadBookings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bookings from local server"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(16),
          child: Obx(
            () => ListView.builder(
              itemCount: widget.controller.bookings.length,
              itemBuilder: (ctx, index) {
                return _buildBookingIntem(context, index);
              },
              itemExtent: 120,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBookingIntem(final BuildContext context, int index) {
    final item = widget.controller.bookings.value[index];
    return Container(
      color: getThemeOf(context).backgroundColor,
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            item.name,
            style: getThemeOf(context).textTheme.headline1,
          ),
          Text(
            item.startDataTime.toString(),
            style: getThemeOf(context).textTheme.subtitle1,
          ),
          Text(
            item.description,
            style: getThemeOf(context).textTheme.subtitle2,
          )
        ],
      ),
    );
  }

  @override
  void onControllerError(ControllerError? error) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text("¡Se ha producido un error!"),
              content: const Text(
                "Comprueba que el servidor local "
                "esta online en el puerto 7890."
                "\nEjecuta: "
                "\n\n\$ cd server"
                "\n\$ dart run bin/main.dart",
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Get.back();
                      Get.back();
                    },
                    child: Text("OK")),
              ],
            ));
  }
}
