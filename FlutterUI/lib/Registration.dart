import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:login/Verification.dart';

String fullPhone = '';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Step 1/5',
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
                      child: Image(image: AssetImage('images/2nd.png'))),
                ),
                const Text(
                  'Registration',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'Enter your mobile number,we will sent you\nOTP to verify later',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                      IntlPhoneField(
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(borderSide: BorderSide()),
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          fullPhone = phone.completeNumber;
                        },
                      ),
                      SizedBox(
                        height: 50,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Verification(
                                  fullPone: '',
                                ),
                              ),
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
          ],
        ),
      ),
    );
  }
}
