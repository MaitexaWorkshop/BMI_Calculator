import 'package:bmi/screens/result.dart';
import 'package:flutter/material.dart';

class BmiCalculation extends StatefulWidget {
  const BmiCalculation({super.key});

  @override
  State<BmiCalculation> createState() => _BmiCalculationState();
}

class _BmiCalculationState extends State<BmiCalculation> {

  double weight=50;
  double height=160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.notifications)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'BMI Calculator',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Gender',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20),
            ),
            Row(
              children: [
              Expanded(
                child: Container(
                  height:160,
                  color:Color.fromRGBO(51, 51, 53, 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.man,color: Colors.white,size: 80,),
                      Text("Male",style: TextStyle(
                          color: Colors.white,fontSize: 20)
                      ),
                    ],
                  )
                ),
              ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height:160,
                    color: Color.fromRGBO(51, 51, 53, 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.woman,color: Colors.white,size: 80,),
                        Text("Female",style: TextStyle(
                          color: Colors.white,fontSize: 20)
                        ),

                      ],
                    )
                  ),
                )


            ],),

            SizedBox(
              height: 20,
            ),
            Text("Weight",style: TextStyle(
                color: Colors.white,fontSize: 20)
            ),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Card(
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {

                        setState(() {

                          weight--;//weight=weight-1

                        });


                      }, icon: Icon(Icons.remove_circle)),
                      Text(weight.toString()),
                      IconButton(onPressed: () {

                        setState(() {
                          weight++;//weight=weight+1
                        });
                      }, icon: Icon(Icons.add_circle)),


                    ],
                  ),
                )),
                Expanded(
                  flex: 2,
                  child: Card(
                  child:  Container(
                      height:45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(child: Text('Kg')),
                          Icon(Icons.arrow_drop_down)
                        ],
                      )),),

                )
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Text("Height",style: TextStyle(
                color: Colors.white,fontSize: 20)
            ),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Card(
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {
                            setState(() {
                              height--;//height=height+1
                            });
                          }, icon: Icon(Icons.remove_circle)),
                          Text(height.toString()),
                          IconButton(onPressed: () {

                            setState((){
                              height++;
                            });
                          }, icon: Icon(Icons.add_circle)),


                        ],
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Card(
                    child:  Container(
                        height:45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Center(child: Text('cm')),
                            Icon(Icons.arrow_drop_down)
                          ],
                        )),),

                )
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Text("Age",style: TextStyle(
                color: Colors.white,fontSize: 20)
            ),
            Card(
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.remove_circle)),
                  Text('56'),
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.add_circle)),



                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {

                  double hMeter=height/100;
                  double hSquare=hMeter*hMeter;

                  double bmi=weight/hSquare;
                  print("Result${bmi}");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(result: bmi.toStringAsFixed(2),)));

                },
                child: Text('Calculate'),
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
