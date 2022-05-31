import 'package:carservice/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


class DataGetter extends StatelessWidget {
  const DataGetter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<AppState>((context), listen: true);
    return Column(
      children: [
        SizedBox(
         height: 16.h,
       ),
       Container(
         child: Text(
           "Enter Distribution Of Inter Arrival",
         style: TextStyle(
           color: Color.fromARGB(255, 33, 36, 6),
           fontSize:14.sp,
           fontWeight: FontWeight.w600
         ),
         ),
       ),
       SizedBox(
         height: 16.h,
       ),
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 24.w),
         child: Container(
           decoration: BoxDecoration(  
             color: Color(0x9D9680),
             border: Border.all(color:Color.fromARGB(255, 33, 36, 6) ),
             borderRadius: BorderRadius.circular(10)
           ),
           child: DropdownButton(
            items: state.Distribution1.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(dropDownStringItem,
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 36, 6),
                    fontWeight: FontWeight.w700
                  ),
                  
                  ),
                ),
                value: dropDownStringItem,
              );
            }).toList(),
            onChanged: (String? newVAl) {
              state.SetDist1(newVAl.toString());
            },
            isExpanded: true,
            underline: SizedBox(),
            value: state.DistrOfArrival,
            icon: Padding(
            padding: EdgeInsets.only(right:20),
            child:Icon(Icons.arrow_circle_down_sharp,color: Color.fromARGB(255, 33, 36, 6),)
      ), 
      
            ),
         ),
       ),
       SizedBox(
         height: 16.h,
       ),
       Container(
         child: Text(
           "Enter Distribution Of Service Time",
         style: TextStyle(
           color: Color.fromARGB(255, 33, 36, 6),
           fontSize:14.sp,
           fontWeight: FontWeight.w600
         ),
         ),
       ),
       SizedBox(
         height: 16.h,
       ),
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 24.w),
         child: Container(
           decoration: BoxDecoration(  
             color: Color(0x9D9680),
             border: Border.all(color:Color.fromARGB(255, 33, 36, 6) ),
             borderRadius: BorderRadius.circular(10)
           ),
           child: DropdownButton(
            items: state.Distribution2.map((String dropDownStringItem1) {
              return DropdownMenuItem<String>(
                
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(dropDownStringItem1,
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 36, 6),
                    fontWeight: FontWeight.w700
                  ),
                  
                  ),
                ),
                value: dropDownStringItem1,
              );
            }).toList(),
            onChanged: (String? newVAl) {
              state.SetDist2(newVAl.toString());
            },
            isExpanded: true,
            underline: SizedBox(),
            value: state.DistrOfService,
            icon: Padding(
            padding: EdgeInsets.only(right:20),
            child:Icon(Icons.arrow_circle_down_sharp,color: Color.fromARGB(255, 33, 36, 6),)
      ), 
      
            ),
         ),
       ),
       SizedBox(
         height: 16.h,
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
         child: Text(
           "Mean Arrival Rate:",
         style: TextStyle(
           color: Color.fromARGB(255, 33, 36, 6),
           fontSize:14.sp,
           fontWeight: FontWeight.w600
         ),
         ),
       ),
       SizedBox(
         width: 20.w,
       ),
           Row(
             children: [
               SizedBox(
                            width: 100.w,
                            height: 50.h,
                            child: TextFormField(
                                controller: state.meanArrival,
                                cursorColor: Color.fromARGB(255, 33, 36, 6),
                                keyboardType:TextInputType.numberWithOptions(decimal: true),
     inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
      ],
                                decoration: InputDecoration(
                                  focusColor: Colors.amber,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromARGB(255, 33, 36, 6))
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color.fromARGB(255, 33, 36, 6), width: 1),
                                    ),
                                )
                                )
                                ),
                              Container(
         child: Text(
           " / minute",
         style: TextStyle(
           color: Color.fromARGB(255, 33, 36, 6),
           fontSize:14.sp,
           fontWeight: FontWeight.w600
         ),
         ),
       ),  
             ],
           ),
         ],
       ),
        SizedBox(
         height: 16.h,
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
         child: Text(
           "Mean Service Rate:",
         style: TextStyle(
           color: Color.fromARGB(255, 33, 36, 6),
           fontSize:14.sp,
           fontWeight: FontWeight.w600
         ),
         ),
       ),
       SizedBox(
         width: 20.w,
       ),
           Row(
             children: [
               SizedBox(
                            width: 100.w,
                            height: 50.h,
                            child: TextFormField(
                                controller: state.meanService,
                                cursorColor: Color.fromARGB(255, 33, 36, 6),
                                keyboardType:TextInputType.numberWithOptions(decimal: true),
     inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
      ],
                                decoration: InputDecoration(
                                  focusColor: Colors.amber,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromARGB(255, 33, 36, 6))
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color.fromARGB(255, 33, 36, 6), width: 1),
                                    ),
                                )
                                )
                                ),
                              Container(
         child: Text(
           " / minute",
         style: TextStyle(
           color: Color.fromARGB(255, 33, 36, 6),
           fontSize:14.sp,
           fontWeight: FontWeight.w600
         ),
         ),
       ),  
             ],
           ),
         ],
       ),
        SizedBox(
         height: 16.h,
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
         child: Text(
           "Number of Server:",
         style: TextStyle(
           color: Color.fromARGB(255, 33, 36, 6),
           fontSize:14.sp,
           fontWeight: FontWeight.w600
         ),
         ),
       ),
       SizedBox(
         width: 20.w,
       ),
           Row(
             children: [
               SizedBox(
                            width: 100.w,
                            height: 50.h,
                            child: TextFormField(
                                // controller: weight,
                                cursorColor: Color.fromARGB(255, 33, 36, 6),
                                keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                                decoration: InputDecoration(
                                  focusColor: Colors.amber,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromARGB(255, 33, 36, 6))
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color.fromARGB(255, 33, 36, 6), width: 1),
                                    ),
                                )
                                )
                                ),
                                 Container(
         child: Text(
           "              ",
         style: TextStyle(
           color: Color.fromARGB(255, 33, 36, 6),
           fontSize:14.sp,
           fontWeight: FontWeight.w600
         ),
         ),
       ),  
             ],
           ),
         ],
       ),
       SizedBox(
         height: 16.h,
       ),
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 24.w),
         child: Container(
          height:48.h ,
          width: double.infinity,
          child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 33, 36, 6),
                      side: BorderSide(color:Color.fromARGB(255, 33, 36, 6)),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed:state.Simulate,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Simulate"),
                        
                        
                      ],
                    ))
                    ),
       ),
    ]);
  }
}
