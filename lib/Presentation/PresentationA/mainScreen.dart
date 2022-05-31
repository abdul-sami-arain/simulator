import 'package:carservice/Presentation/PresentationA/dataGetter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(   
        appBar: AppBar( 
          backgroundColor: Color(0x5B595A),
          title: Text("Queuing Simulator"),
          actions:[
            Padding(
              padding:  EdgeInsets.only(right:10.0),
              child: Icon(Icons.settings),
            )
          ]
        ),
        body: Column(
         children: [
           DataGetter()
         ],
        ),
      ),
    );
  }
}