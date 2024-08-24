// import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Step 4/5',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: const Color.fromARGB(255, 131, 33, 243),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 120,
              child: const SizedBox(
                width: 200,
                height: 130,
                child: Image(image: AssetImage('images/profileimg.png')),
              ),
            ),
            const Text(
              'One step away to\nyour account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Now we neet to verify your identify',
              textAlign: TextAlign.center,
              style: TextStyle(
                // fontSize: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: 340,
              padding: EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 15, 219, 28),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: const Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                ' User identify card  ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                          width: 90,
                          child: TextButton(
                            onPressed: () {
                              openDialog();
                            },
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(-1)),
                              backgroundColor:
                                  WidgetStateProperty.all<Color>(Colors.red),
                              foregroundColor: WidgetStateProperty.all<Color>(
                                  const Color.fromARGB(255, 255, 255, 255)),
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )),
                            ),
                            child: const Text(
                              'Recomentded',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                      '  get the full feature of your IndoAliz!\n  You can store up to IDR 10 Milion'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 340,
              padding: EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 15, 219, 28),
                        child: Text(
                          '2',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '  Without identify card  ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text(
                      '   You only can store IDR 1 Milion to\n   You IndoAlliz wallet'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 330,
                  child: ElevatedButton(
                    onPressed: () {
                      openDialog();
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
            )
          ],
        ),
      ),
    );
  }

  void openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  // width: 320,
                  height: 100,
                  child: const Image(
                      image: AssetImage('images/Registered_profile.png')),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Congratulstions',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 131, 33, 243),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Now you are registered',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Get ready with IconAlliz wallet',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: 50,
                  width: 330,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()),
                      );
                    },
                    child: Text('Start Now'),
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
      );
}
