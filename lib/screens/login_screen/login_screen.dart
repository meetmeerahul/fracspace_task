import 'package:flutter/material.dart';
import 'package:fracspace_task/screens/home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool _isVisible;
  late bool _isRemember;

  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isVisible = true;
    _isRemember = false;
    _username.text = "Rahul";
    _password.text = "12345";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hi",
                      style: TextStyle(fontSize: 40),
                    ),
                    const Text(
                      'Welcome To',
                      style: TextStyle(fontSize: 40),
                    ),
                    const Text(
                      "FRACSPACE",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 11, 2, 65)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 50, 8, 8),
                      child: Column(
                        children: [
                          TextField(
                            controller: _username,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Username',
                              hintText: 'Enter your Username',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextField(
                            controller: _password,
                            obscureText: _isVisible ? true : false,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.password),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isVisible = !_isVisible;
                                    });
                                  },
                                  icon: _isVisible
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off)),
                              labelText: 'Enter your password',
                              hintText: 'Password',
                              focusColor: Colors.grey,
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          shape: const CircleBorder(),
                          value: _isRemember,
                          onChanged: (bool? newValue) {
                            setState(() {
                              _isRemember = !_isRemember;
                            });
                          },
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(
                              color: Color.fromARGB(255, 190, 189, 189)),
                        ),
                        const SizedBox(
                          width: 110,
                        ),
                        const Text("Forgot password ?")
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 11, 2, 65),
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        onPressed: () {
                          if (_username.text == "Rahul" &&
                              _password.text == "12345") {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          } else {
                            showInSnackBar("Wrong username or password");
                          }
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 30, 8, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 1,
                            width: 130,
                            color: Colors.grey,
                          ),
                          const Text(
                            "Or sign up with",
                            style: TextStyle(
                                color: Color.fromARGB(255, 190, 189, 189)),
                          ),
                          Container(
                            height: 1,
                            width: 130,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      height: 30,
                      width: 30,
                      image: AssetImage('assets/g.png'),
                    ),
                    Image(
                      height: 30,
                      width: 30,
                      image: AssetImage('assets/f.png'),
                    ),
                    Image(
                      height: 30,
                      width: 30,
                      image: AssetImage('assets/x.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ? ",
                    style: TextStyle(color: Color.fromARGB(255, 190, 189, 189)),
                  ),
                  Text(
                    "Signup",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void showInSnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(value),
        backgroundColor: const Color.fromARGB(255, 88, 27, 22),
      ),
    );
  }
}
