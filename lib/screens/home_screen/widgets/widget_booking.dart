import 'package:flutter/material.dart';
import 'package:fracspace_task/screens/home_screen/widgets/button_widget.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 246, 246),
              boxShadow: const [BoxShadow(blurRadius: 0.1)],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Complimentary Stay"),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 127, 233, 134),
                    boxShadow: const [BoxShadow(blurRadius: 0.1)],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "7 Days Left",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Previous Booking",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const PreviousBookings(
            bookingDate: "21-May-2021",
            from: "01-June-2021",
            to: "07-JUne-2021",
          ),
          const SizedBox(
            height: 10,
          ),
          const PreviousBookings(
            bookingDate: "21-May-2021",
            from: "01-June-2021",
            to: "07-JUne-2021",
          ),
          const SizedBox(
            height: 60,
          ),
          const PropertiesButton(buttonName: "BOOK YOUR HOLIDAYS")
        ],
      ),
    );
  }
}

class PreviousBookings extends StatelessWidget {
  const PreviousBookings({
    super.key,
    required this.bookingDate,
    required this.from,
    required this.to,
  });

  final String bookingDate;
  final String from;
  final String to;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width * .97,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 247, 246, 246),
        boxShadow: const [BoxShadow(blurRadius: 0.1)],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Date of Booking",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 90,
                ),
                Text(
                  bookingDate,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Period of Stay",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 90,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      from,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        const Text("to ", style: TextStyle(fontSize: 20)),
                        Text(
                          to,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
