import 'package:flutter/material.dart';
import 'services.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color appBarColor = Color(0xFF33d2ea);
    const Color customColor = Color(0xFFe3bd76);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          color: appBarColor, // Background color of the app bar
          child: Center(
            child: Text(
              'Time saving',
              style: TextStyle(
                fontFamily: 'Android 101',
                color: customColor, // Text color
                fontSize: 40.0,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF33d2ea),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Image.asset(
              'assets/timelogo-removebg-preview.png',
              width: 500,
              height: 500,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:customColor,
              ),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter your phone number',
                  border: InputBorder.none,
                ),
                controller: TextEditingController(

                ),
              ),

            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:customColor,
              ),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: InputBorder.none,
                ),
                controller: TextEditingController(

                ),
              ),

            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => services()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(customColor), // Background color of the button
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Text color of the button
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
