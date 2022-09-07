import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final String result;
  final String text;
  final String advise;
  final Color color1;

  BMIResultScreen({
    required this.text,
    required this.advise,
    required this.result,
    required this.color1,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Expanded(
                child: Text(
              'Your Result',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            )),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[600]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '$text',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: color1),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('$result',
                          style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Normal BMI Range:',
                        style: TextStyle(
                            fontSize: 18, color: Colors.black.withOpacity(0.9)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '18.5 - 25 kg/m2',
                        style: TextStyle(
                            fontSize: 18, color: Colors.black.withOpacity(0.9)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('$advise',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 19)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        height: 50,
                        color: Color(0xFF0A0E21),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                Future.delayed(Duration(seconds: 2), () {
                                  Navigator.of(context).pop(true);
                                });
                                return AlertDialog(
                                  title: Text('saved successfully'),
                                );
                              });
                        },
                        child: Text(
                          'Save Result',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue[700],
              ),
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Re Calculate',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
