import 'package:bmi/cal.dart';
import 'package:flutter/material.dart';
import 'package:bmi/bmi_screen_result.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

bool isMale = true;
double height = 120;
int weight = 60;
int age = 25;

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale
                                ? Colors.blue.withOpacity(0.6)
                                : Colors.grey[600],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 120,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: !isMale
                                ? Colors.blue.withOpacity(0.6)
                                : Colors.grey[600],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 120,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[600],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [],
                          ),
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Slider(
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[600]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: '1',
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  backgroundColor: Colors.grey[300],
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                FloatingActionButton(
                                  heroTag: '2',
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor: Colors.grey[300],
                                  mini: true,
                                  child: Icon(Icons.add),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[600]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'weight',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: '3',
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  backgroundColor: Colors.grey[300],
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                FloatingActionButton(
                                  heroTag: '4',
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  backgroundColor: Colors.grey[300],
                                  mini: true,
                                  child: Icon(Icons.add),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue[700],
              child: MaterialButton(
                onPressed: () {
                  CALC c = CALC(height: height, weight: weight);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BMIResultScreen(
                                result: c.result(),
                                advise: c.advise(),
                                text: c.text1(),
                                color1: c.color1(),
                              )));
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            )
          ],
        ));
  }
}
