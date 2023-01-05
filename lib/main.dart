import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:machine_test/controllers/list_controller.dart';
import 'package:machine_test/models/listModel.dart';
import 'package:machine_test/services/http_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Machine Test',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

final ListController listController = Get.put(ListController());
 late final Employemodel employemodel;
 late Future<List<Employemodel>>  empdata;

 @override
  void initState() {
    empdata = Httpservice.getList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_back_ios)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Senior .Net Developer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("Trivandrum"),
                ],
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.filter_alt_outlined)),
              SizedBox(width: 10,),
             Material(
               shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(32.0)),
               elevation: 10.0,
               clipBehavior: Clip.antiAlias,
               child: MaterialButton(
                 color: Colors.green[200],
                 height: 40,
                 minWidth: 120,
                 onPressed: (){},
                 child: Text("Location"),

               ),
             ),
              SizedBox(width: 30,),
              Material(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(32.0)),
                elevation: 10.0,
                clipBehavior: Clip.antiAlias,
                child: MaterialButton(
                  height: 40,
                  minWidth: 120,
                  onPressed: (){},
                  child: Text("Job Type"),

                ),
              ),
              SizedBox(width: 30,),
              Material(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(32.0)),
                elevation: 10.0,
                clipBehavior: Clip.antiAlias,
                child: MaterialButton(
                  height: 40,
                  minWidth: 120,
                  onPressed: (){},
                  child: Text("Category"),

                ),
              ),
            ],
          ),
           Expanded(
               child: FutureBuilder<List<Employemodel>>(
                 future: empdata,
                     builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
     debugPrint(empdata.toString());
    if(snapshot.hasData){
      debugPrint(snapshot.data);
      return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext, index){
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(snapshot.data[0].response!.details![4].employer!.name.toString(),
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.star_border_outlined))
                    ],
                  ),
                  Text(snapshot.data[0].response!.details![8].toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  Wrap(
                      children: [
                        Text(snapshot.data[0].response!.details![10].toString(),)
                      ]
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(snapshot.data[0].response!.details![2].toString(),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.white),
                      ),
                      Container(
                        child: Text(snapshot.data[0].response!.details![17].toString(),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.white),
                      ),
                      Container(
                        child: Text(snapshot.data[0].response!.details![27].toString(),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Text(snapshot.data[0].response!.details![43].toString(),),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.white),
                        ),
                      ),
                      Text(snapshot.data[0].response!.details![42].toString(),),
                    ],
                  ),
                ],
              ),
            );
          });

    }
    else {
      return const Center(child: CircularProgressIndicator());
    }
    },),

               ),


        ],
      ),
         );
  }
}
