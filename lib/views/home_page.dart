// ignore_for_file: prefer_const_constructors
import 'package:api12/controllers/random_activity_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:get/get.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

 ActivityController controller = Get.put(ActivityController());
@override
 

  @override
  Widget build(BuildContext context) {

return Scaffold(
        backgroundColor: const Color(0xFFB45CFF),
        body: 
       ListView.builder(
          itemCount: 1,
          itemBuilder: (context,index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height:70,
                ),
                Container(
                  height: 230,
                  padding: const EdgeInsets.all(32),
                  decoration: const BoxDecoration(color: Color(0xFFAE56FA), shape: BoxShape.circle),
                  child:  Image.asset('assets/images/task-done.png'),
                ),
                48.height,
                Text('Task Of The day!', style: boldTextStyle(size: 20, color: white)),
                16.height,
               controller.model==null ?const Center(child: SpinKitChasingDots(color: Colors.white)

):
                Text(
                 controller.model!.activity,
                  style: primaryTextStyle(size: 15, color: white),
                  textAlign: TextAlign.center,
                ).paddingSymmetric(vertical: 8, horizontal: 60),
                50.height,
                GestureDetector(
                  child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFAD55F9),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.refresh_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                      onTap: (){controller.fetchData();} ,
                ),
              ],
            );
          }
        ),   
      );
    }
}
    
   
 