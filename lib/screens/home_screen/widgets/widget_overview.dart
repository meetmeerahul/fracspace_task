import 'package:flutter/material.dart';
import 'package:fracspace_task/screens/home_screen/widgets/button_widget.dart';

class WidgetOverView extends StatefulWidget {
  const WidgetOverView({super.key});

  @override
  State<WidgetOverView> createState() => _WidgetOverViewState();
}

class _WidgetOverViewState extends State<WidgetOverView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OverviewItems(heading: "Date of Purchase", content: "15-03-2021"),
        const OverviewItems(heading: "Fractions", content: "2/8"),
        const OverviewItems(heading: "Invested Amount", content: "25 Lakhs"),
        const OverviewItems(heading: "Date of Purchase", content: "15-03-2021"),
        const OverviewItems(
          heading: "Current  VAlue(In  two Years)",
          content: "27 Lakhs",
          color: Colors.green,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ledger"),
              SizedBox(
                width: 40,
              ),
              Row(
                children: [
                  Text("View"),
                  Icon(Icons.arrow_forward),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const PropertiesButton(buttonName: "SELL YOUR PROPERTIES"),
      ],
    );
  }
}

class OverviewItems extends StatelessWidget {
  const OverviewItems({
    super.key,
    required this.heading,
    required this.content,
    this.color = Colors.black,
  });

  final String heading;
  final String content;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 246, 246),
          boxShadow: const [BoxShadow(blurRadius: 0.1)],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(heading),
              Text(
                content,
                style: TextStyle(
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
