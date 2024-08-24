import 'package:flutter/material.dart';
import 'package:login/profile.dart';

class Finger extends StatefulWidget {
  const Finger({super.key});

  @override
  State<Finger> createState() => _FingerState();
}

class _FingerState extends State<Finger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Step 3/5',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: const Color.fromARGB(255, 131, 33, 243),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                    height: 170,
                    child: Image(image: AssetImage('images/finger1.png'))),
                const Text(
                  'Fingerprint',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Add your fingerprint',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    child: Column(
                  children: [
                    const SizedBox(
                      width: 200,
                      height: 150,
                      child:
                          Image(image: AssetImage('images/fingerprint2.png')),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()),
                            );
                          },
                          child: const Text('Skip This Step',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 131, 33, 243),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 131, 33, 243),
                          size: 25,
                        ),
                      ],
                    )
                  ],
                )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 330,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()),
                      );
                    },
                    child: Text('Continue'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(
                          255, 255, 255, 255), // text color
                      backgroundColor: const Color.fromARGB(
                          255, 131, 33, 243), // background color
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
