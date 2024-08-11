import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/booking/booking_screen.dart';
import 'package:myapp/tickets/tickt_screen.dart';
import 'package:myapp/utils/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: kprimary),
            child: const Icon(
              Icons.menu,
              size: 25,
              color: kWhite,
            ),
          ),
        ),
        actions: [const Icon(Icons.notifications)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Home',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Image(
                image: AssetImage('assets/home.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bookingMethod('Booking', 'assets/booking.png', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookingScreen()));
                  }),
                  bookingMethod('Tickets', 'assets/ticket.png', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TicktScreen()));
                  })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector bookingMethod(
      String text, String image, void Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 140,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kWhite,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$text",
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
