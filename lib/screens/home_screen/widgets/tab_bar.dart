import 'package:flutter/material.dart';
import 'package:fracspace_task/screens/home_screen/widgets/widget_booking.dart';
import 'package:fracspace_task/screens/home_screen/widgets/widget_overview.dart';

class HomePageTabBar extends StatelessWidget {
  const HomePageTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3, // Number of tabs
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(
                child: Text("Overview"),
              ),
              Tab(
                child: Text("Bookings"),
              ),
              Tab(
                child: Text("Guest Book"),
              ),
            ],
          ),
          SizedBox(
            height: 500,
            // Adjust height as needed
            child: TabBarView(
              children: [
                WidgetOverView(),
                BookingWidget(),
                Center(child: Text('Tab 3')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
