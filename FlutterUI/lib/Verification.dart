import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login/Registration.dart';
import 'package:flutter_verification_code_field/flutter_verification_code_field.dart';
import 'package:login/fingarpage.dart';
import 'package:otp_timer_button/otp_timer_button.dart';

class Verification extends StatefulWidget {
  const Verification({
    super.key,
    required this.fullPone,
  });
  final String fullPone;
  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Step 2/5',
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
                  width: 300,
                  height: 200,
                  child: const SizedBox(
                      width: 200,
                      height: 150,
                      child: Image(image: AssetImage('images/OTpimage.png'))),
                ),
                const Text(
                  'Verification',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Enter 4 digit number that sent to\n$fullPhone',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      // fontSize: 30,
                      color: Colors.black,
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  // color: const Color.fromARGB(255, 235, 172, 172),
                  height: 150,
                  width: 330,
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
                        blurRadius: 50,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      VerificationCodeField(
                        length: 4,
                        onFilled: (value) {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 50,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Finger()),
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
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            OtpTimerButton(
              onPressed: () {},
              text: const Text(
                'Re-sent code in',
                style: TextStyle(color: Color.fromARGB(255, 131, 33, 243)),
              ),
              duration: 30,
              buttonType: ButtonType.text_button,
              textColor: Color.fromARGB(255, 131, 33, 243),
            ),
          ],
        ),
      ),
    );
  }
}
