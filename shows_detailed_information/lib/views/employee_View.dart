import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shows_detailed_information/models/employee_model.dart';
import 'package:shows_detailed_information/services/employee_service.dart';
import 'package:shows_detailed_information/views/emp_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EmployeeView extends StatefulWidget {
  const EmployeeView({super.key});

  @override
  State<EmployeeView> createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {
  List<Employee> cashedmyEmp = [];
  bool louding = true;

  getCacheedData() async {
    await EmployeeService().getEmpolyee();
    louding = false;
    final Prefs = await SharedPreferences.getInstance();
    String EmployeeData = Prefs.getString("EmpData") ?? '';
    var jesonData = jsonDecode(EmployeeData);
    jesonData.forEach((item) {
      cashedmyEmp.add(Employee.fromJson(item));
    });
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getCacheedData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: louding
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmployeeDetails(
                                    empData: cashedmyEmp[index],
                                  )));
                    },
                    child: ListTile(
                      title: Text("Name: ${cashedmyEmp[index].name}"),
                      trailing: Icon(Icons.person),
                    ),
                  );
                },
                itemCount: cashedmyEmp.length,
              ));
  }
}
