import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:machine_test/models/listModel.dart';

class Httpservice{



  static Future<List<Employemodel>> getList() async {
    var response = await http.get(Uri.parse( "http://sjf.proximys.in/api/jobs/latest-jobs/"));
    debugPrint(response.statusCode.toString());
   // debugPrint(response.body);
    if (response.statusCode == 200) {
   //  var data = response.body ;
     //return employemodelFromJson(data) ;
     // final parsed = json.decode(response.body)['results'];
      //return parsed.map<Employemodel>((json) => Employemodel.fromJson(json)).toList();

   /*//   List<dynamic> jsonResponse = jsonDecode(response.body)['results'].map((data) => Employemodel.fromJson(data))
    //      .toList();
    //  debugPrint(jsonResponse.toString());
      List<Employemodel> empmodel = [];
      for(var item in jsonResponse){
        empmodel.add(Employemodel.fromJson(item));
      }
      debugPrint(empmodel.toString());
      return empmodel;
*/
      final data = response.body;
      Map<String,dynamic> map = jsonDecode(data);
      final empl = Employemodel.fromJson(map);
      return empl;

       } else {
     throw Exception();
     // var data = response.body ;
      //return employemodelFromJson(data);
       }
  }

}