import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shows_detailed_information/models/employee_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EmployeeService {
  String endPoint = 'https://jsonplaceholder.typicode.com/users';

  Future<List<Employee>> getEmpolyee() async {
    List<Employee> employee = [];

    try {
      var response = await Dio().get(endPoint);
      var empData = response.data;
      var cachedData = jsonEncode(empData);
      final Prefs = await SharedPreferences.getInstance();
      Prefs.setString("EmpData", cachedData);
      empData.forEach((json) {
        Employee emp = Employee.fromJson(json);
        employee.add(emp);
      });
    } catch (e) {
      print(e.toString());
    }
    return employee;
  }
}
