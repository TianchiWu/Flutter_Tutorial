import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double num1 = 0.0;
  double num2 = 0.0;
  double num3 = 0.0;
  double sum = 0.0;

  void _sum() {
    setState(() {
      sum = num1 + num2 + num3;
      sum = double.parse(sum.toStringAsFixed(5));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(labelText: 'Number 1'),
                    onChanged: (value) {
                      setState(() {
                        num1 = double.tryParse(value) ?? 0.0;
                      });
                    },
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(labelText: 'Number 2'),
                    onChanged: (value) {
                      setState(() {
                        num2 = double.tryParse(value) ?? 0.0;
                      });
                    },
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(labelText: 'Number 3'),
                    onChanged: (value) {
                      setState(() {
                        num3 = double.tryParse(value) ?? 0.0;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _sum,
              child: Text('Enter'),
            ),
            SizedBox(height: 20),
            Text(
              'Sum: $sum',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
