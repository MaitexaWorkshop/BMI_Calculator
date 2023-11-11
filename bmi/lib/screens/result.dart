import 'package:bmi/screens/bmicalculator.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
 final String result;


 Result({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.notifications)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Result',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(51, 51, 53, 5),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Color.fromRGBO(51, 51, 53, 100),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Your Current BMI',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    result,
                    style: TextStyle(fontSize: 39, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BmiCalculation()));
                },
                child: Text('Recalculate'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(6, 196, 108, 100),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
