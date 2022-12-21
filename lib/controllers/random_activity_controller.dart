import 'package:api12/controllers/api_services.dart';
import 'package:api12/models/model.dart';
import 'package:get/get.dart';

class ActivityController extends GetxController{
  RandomActivity? model ;
@override
  void onInit() {
 fetchData();
    super.onInit();
  }
void fetchData() async{
  
   model = await getData();

}

}