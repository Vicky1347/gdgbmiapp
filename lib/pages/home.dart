import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController height = TextEditingController();
  TextEditingController weigth = TextEditingController();

  double? ans;

  void add() {
    String h = height.text;
    String w = weigth.text;

    double x = int.parse(h) / 100; //cm to m
    int y = int.parse(w);

    setState(() {
      ans = y / (x * x);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("BMIAPP"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 10),
                TextField(
                  controller: height, // Use the correct controller here
                  decoration: InputDecoration(
                    labelText: "Height in cm",
                    hintText: "Enter your height",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType:
                      TextInputType.number, // Suggest numeric keyboard
                ),
                SizedBox(height: 20),
                TextField(
                  controller: weigth,
                  decoration: InputDecoration(
                    labelText: "Weight in kg",
                    hintText: "Enter your weight",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: add,
                  child: Text("Calculate BMI"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  ans != null ? "Your BMI is: $ans" : "Please enter values",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
