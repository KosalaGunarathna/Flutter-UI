import 'package:flutter/material.dart';
import 'package:login/Registration.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 240,
                    width: 300,
                    child: SizedBox(
                        height: 100,
                        width: 200,
                        child: Image(image: AssetImage('images/onboard1.png'))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Lest get started',
                    style: TextStyle(
                      color: Color.fromARGB(255, 89, 89, 89),
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Never a better time than now to start\nthinking about how you can manage all your\nfinances and cry pto assets from one place',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 89, 89, 89), fontSize: 15),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const registration()));
                        },
                        child: Text('Create Account'),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: const Color.fromARGB(
                                255, 255, 255, 255), // text color
                            backgroundColor: const Color.fromARGB(
                                255, 131, 33, 243)) // background color
                        ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Login'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, // text color
                            // backgroundColor: const Color.fromARGB(
                            // 255, 131, 33, 243)
                          )) // background color
                      ),
                ],
              )

              // )
            ]),
      ),
    );
  }
}
