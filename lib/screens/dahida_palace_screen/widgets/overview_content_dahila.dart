import 'package:flutter/material.dart';
import 'package:fracspace_task/screens/dahida_palace_screen/widgets/aminity_items.dart';

class DahilaContentScreen extends StatelessWidget {
  const DahilaContentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15.0, 12, 0,
                  60), // Adjust bottom padding to accommodate space for the container at the bottom
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Attributes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("4"),
                          Icon(
                            Icons.bed_outlined,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Row(
                        children: [
                          Text("4"),
                          Icon(
                            Icons.bathroom_outlined,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text("1200 Sq ft"),
                      SizedBox(
                        width: 80,
                      ),
                      Text("Build 1999"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "About this home",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    """Entertainers will fell right at hime at Dahila\nPalce,a sophisticated 4-story townhouse\nwith 3,130 squre feet indores and nearly.""",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(1.0, 8, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Distictive Aminities",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "View More",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AminityItems(
                      itemOne: "360 Degree views", itemTwo: "Ocean Views"),
                  SizedBox(
                    height: 10,
                  ),
                  AminityItems(
                      itemOne: "Elevator", itemTwo: "Deck              "),
                  SizedBox(
                    height: 10,
                  ),
                  AminityItems(itemOne: "Patio", itemTwo: "Fireplace       "),
                  SizedBox(
                    height: 10,
                  ),
                  AminityItems(itemOne: "Garden", itemTwo: "Groceryshop "),
                  SizedBox(
                    height: 10,
                  ),
                  AminityItems(
                      itemOne: "Playarea", itemTwo: "Stadium         "),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
