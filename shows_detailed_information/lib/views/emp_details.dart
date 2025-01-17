import 'package:flutter/material.dart';
import 'package:shows_detailed_information/models/employee_model.dart';

// ignore: must_be_immutable
class EmployeeDetails extends StatefulWidget {
  Employee empData;
  EmployeeDetails({super.key, required this.empData});

  @override
  State<EmployeeDetails> createState() => __EmployeeDetailStateState();
}

class __EmployeeDetailStateState extends State<EmployeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details Page",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.person,
              color: Color.fromARGB(255, 87, 83, 71),
            ),
            Text(
              " Name: ${widget.empData.name}",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 87, 83, 71),
                  fontWeight: FontWeight.bold),
            ),
            Text(" Email: ${widget.empData.email}",
                style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 136, 130, 112))),
            Text(" Phone: ${widget.empData.phone}",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 136, 130, 112))),
            Text("Address: ${widget.empData.address.city}",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 136, 130, 112))),
          ],
        ),
      ),
    );
  }
}
