import 'package:flutter/material.dart';
import 'package:fracspace_task/screens/dahida_palace_screen/dahilapalace.dart';
import 'package:fracspace_task/screens/home_screen/widgets/tab_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_circle_left,
          color: Color.fromARGB(255, 72, 72, 72),
        ),
        centerTitle: true,
        title: const Text("Properties Details"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.share_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 246, 246),
                      boxShadow: const [BoxShadow(blurRadius: 0.1)],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const DahilaPalaceScreen()),
                        );
                      },
                      child: ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/dahila.jpeg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        title: const Text("Dahila Palace"),
                        subtitle: const Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text("Fort Kochi")
                          ],
                        ),
                        trailing: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("View"),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_forward_sharp),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const HomePageTabBar()
        ],
      ),
    );
  }
}
