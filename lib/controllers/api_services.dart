import 'dart:developer';
import 'package:api12/services/api_constants.dart';
import 'package:api12/models/model.dart';
import 'package:http/http.dart' as http;


  Future <RandomActivity> getData() async{
   
  var url = Uri.parse(ApiConstants.baseUrl+ApiConstants.endUrl);


    var response = await http.get(url);

if (response.statusCode==200) {
  RandomActivity model =randomActivityFromJson(response.body) ;
 return model;
}else{
  throw(response.body);
}

  }
