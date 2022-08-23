import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProperty extends StatefulWidget {
  const AddProperty({Key? key}) : super(key: key);

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidget(),
    );
    
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int currentStep =0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1,left: 20,right: 20),
        // child:Theme(
        //   data: ThemeData(
        //     canvasColor: Colors.transparent,
        //     // primaryColor: Colors.white,
        //     colorScheme: Theme.of(context).colorScheme.copyWith(
        //       primary: Colors.white,
        //       background: Colors.amber,
        //       secondary: Colors.amber,

        //     ),

        //   ),
          child:Column(
            children: [
              Center(
                child: Text("Add a Property", style: GoogleFonts.merriweather(
                         fontSize: 24,
                         fontWeight: FontWeight.normal,
                         color: Colors.white
                         )
                       ),
              ),
              _step1()
              // Stepper(
              //     type: StepperType.horizontal,
              //     steps: getSteps(),
              //     elevation: 0,
              //     controlsBuilder: (context, onStepContinue) {
              //       return Container(
              //         child: Row(
                        
              //         ),
              //       );
              //     },
              //     currentStep: currentStep,
              //     onStepContinue: () {
              //       currentStep == 0 ? null :
              //       setState(() => currentStep-=1);
              //     },
              //     onStepTapped: (Step) => setState(() => currentStep = Step),
              //     onStepCancel: () {
              //       final isLastStep = currentStep == getSteps().length - 1;
              //       if (isLastStep) {
              //         print('complited');
                      
              //         // send data to server
              //       } else {
              //       setState(() => currentStep += 1);
              //       }
              //     },
                  // controlsBuilder: (context, {onStepContinue, onStepCancel}) {
                  //   return Container(
                  //     child: Row(
                  //       children: [
                  //         Expanded(
                  //           child: ElevatedButton(child: Text('NEXT'),
                  //               onPressed: onStepContinue,
                  //             )
                  //           ),
                  //           Expanded(
                  //           child: ElevatedButton(child: Text('NEXT'),
                  //               onPressed: onStepCancel,
                  //             )
                  //           )
                  //       ],
                  //     ),
                  //   );
                  // },
                  // ),
            ],
          ),
        ),
        )
      // )
    );
  }
//   List<Step> getSteps() => [
//     Step(
//         state: currentStep > 0? StepState.complete :StepState.editing,
//         isActive: currentStep >= 0,
//         title: Text('Step 1'), 
//         content: Container(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(onPressed: () {
                      
//                     }, icon: Icon(Icons.account_circle_rounded,color: Colors.white60,size: MediaQuery.of(context).size.height*0.15,))
//                   ],
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height*0.01,
//                 ),
//                 Row(
//                   children: [
//                     TextButton(onPressed: (() {
                      
//                     }), child:Text("Choose an avatar",style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300,fontSize: 10,decoration: TextDecoration.underline ),),
// )
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       Step(
//         state: currentStep > 1? StepState.complete :StepState.disabled,
//         isActive: currentStep>= 1,
//         title: Text('Step 2'), 
//         content: Container(),
//       ),
//       Step(
//         isActive: currentStep>= 2,
//         title: Text('Step 3'), 
//         content: Container(),
//       ),
//     ];
DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
        ),
      );
}
Widget _step1() {
  final items = ['Item 1','Item 2','Item 3','Item 4'];
  String? value;
  return Container(
    // child: SingleChildScrollView(
      child : Column(
        children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // IconButton(onPressed: () {

                    // }, icon: Icon(Icons.account_circle_rounded,color: Colors.white60,size: 100,)),
                    Icon(Icons.account_circle_rounded,color: Colors.white60,size: 120,)
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: () {
                      
                    }, child:Text("Upload Profile Picture",style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300,fontSize: 10,decoration: TextDecoration.underline ),),
                   )
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                TextField(
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500,fontSize: 14 ),
                        
                        textAlign: TextAlign.left,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: "Name of Place",
                          labelStyle: TextStyle(color: Colors.white70),
                          // ignore: prefer_const_constructors
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ) ,
                        
                        ),
                        SizedBox(
                  height: 1,
                ),
                // DropdownButtonFormField( 
                //           isExpanded: true,
                //           decoration: InputDecoration( 
                //             labelText: "Subject*",
                //             labelStyle: TextStyle(color: Colors.white70,fontSize: 14),
                //             enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                //            ),
                //             dropdownColor: Color.fromARGB(255, 32, 9, 99),
                //             style: TextStyle(
                //               fontSize: 14,
                //                 color: Colors.white,
                //                 fontWeight: FontWeight.w400
                //             ),

                //             value: value,
                //             items: items.map(buildMenuItem).toList(),
                //                 onChanged: (value) => setState(() =>this.value = value as String?),
                //                 ),
                                SizedBox(
                                  height: 1,
                                ),
                TextField(
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500,fontSize: 14 ),
                        
                        textAlign: TextAlign.left,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: "Name of Place",
                          labelStyle: TextStyle(color: Colors.white70),
                          // ignore: prefer_const_constructors
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ) ,
                        
                        ),
                        SizedBox(
                  height: 1,
                ),
                TextField(
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500,fontSize: 14 ),
                        
                        textAlign: TextAlign.left,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: "Name of Place",
                          labelStyle: TextStyle(color: Colors.white70),
                          // ignore: prefer_const_constructors
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ) ,
                        
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           
                TextField(
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500,fontSize: 14 ),
                        
                        textAlign: TextAlign.left,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: "Name of Place",
                          labelStyle: TextStyle(color: Colors.white70),
                          // ignore: prefer_const_constructors
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ) ,
                        
                        ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                TextField(
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500,fontSize: 14 ),
                        
                        textAlign: TextAlign.left,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: "Name of Place",
                          labelStyle: TextStyle(color: Colors.white70),
                          // ignore: prefer_const_constructors
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ) ,
                        
                        ),
                        
                TextField(
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500,fontSize: 14 ),
                        
                        textAlign: TextAlign.left,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: "Name of Place",
                          labelStyle: TextStyle(color: Colors.white70),
                          // ignore: prefer_const_constructors
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ) ,
                        
                        ),
                          ],
                        )

        ],
      ),
    // ),
    
  );
  
}