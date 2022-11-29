// ignore_for_file: prefer_const_constructors
import 'package:api12/models/model.dart';
import 'package:api12/controllers/api_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nb_utils/nb_utils.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RandomActivity? _model ;
 
@override
  void initState() {
    fetchData();
   
    super.initState();
    
  }

void fetchData() async{
  
   _model = await getData();
 setState(() {
  
 });
}

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
               _model==null ?const Center(child: SpinKitChasingDots(color: Colors.white)

):
                Text(
                  _model!.activity,
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
                      onTap: (){fetchData();} ,
                ),
              ],
            );
          }
        ),   
      );
    }
}
    
   
 