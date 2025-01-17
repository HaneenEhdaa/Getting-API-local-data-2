import 'package:flutter/material.dart';
import 'package:shows_detailed_information/views/employee_View.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EmployeeView()));
            },
            child: Text(
              "list Employee",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )),
      ),
    );
  }
}
