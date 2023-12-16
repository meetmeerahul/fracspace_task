import 'package:flutter/material.dart';
import 'package:fracspace_task/screens/dahida_palace_screen/widgets/widget_tabbar_dahila.dart';

class DahilaPalaceScreen extends StatefulWidget {
  const DahilaPalaceScreen({Key? key}) : super(key: key);

  @override
  State<DahilaPalaceScreen> createState() => _DahilaPalaceScreenState();
}

class _DahilaPalaceScreenState extends State<DahilaPalaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_circle_left,
            color: Color.fromARGB(255, 72, 72, 72),
          ),
        ),
        centerTitle: true,
        title: const Text("Dahila Palace"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.share_rounded),
                Icon(Icons.favorite_border),
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(90, 0, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "INR 15,18,000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromARGB(255, 11, 2, 65),
                        ),
                      ),
                      Text(" - 1/8 Ownership"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 8),
                  child: SizedBox(
                    height: 210,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              _buildSmallImage('assets/1.jpeg'),
                              const SizedBox(height: 2),
                              _buildSmallImage('assets/2.jpg'),
                            ],
                          ),
                        ),
                        const SizedBox(width: 2),
                        Expanded(
                          flex: 2,
                          child: _buildBigImage('assets/3.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),
                const DahilaTabbar()
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 50,
              color: const Color.fromARGB(0, 113, 113, 114).withOpacity(0.8),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                          Text(
                            " Call",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.message,
                            color: Colors.white,
                          ),
                          Text(
                            "Contact",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Color.fromARGB(255, 11, 2, 65),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                "TOUR",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallImage(String imagePath) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _buildBigImage(String imagePath) {
    return Stack(
      children: [
        SizedBox(
          height: 202,
          width: double.infinity,
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(15), // Set your desired border radius
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 155,
          left: 20,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius:
                  BorderRadius.circular(8), // Set your desired border radius
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.threed_rotation_outlined,
                  color: Colors.white,
                  size: 10,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "3D",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "View",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 160,
          left: 200,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(0.6),
            ),
            child: const Text(
              '+3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
