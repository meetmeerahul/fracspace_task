import 'package:flutter/material.dart';
import 'package:fracspace_task/screens/dahida_palace_screen/widgets/overview_content_dahila.dart';

class DahilaTabbar extends StatelessWidget {
  const DahilaTabbar({
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
                child: Text("Society"),
              ),
              Tab(
                child: Text("Price Trends"),
              ),
            ],
          ),
          SizedBox(
            height: 400,
            child: TabBarView(
              children: [
                DahilaContentScreen(),
                Center(
                  child: Text('Tab 2'),
                ),
                Center(
                  child: Text('Tab 3'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
