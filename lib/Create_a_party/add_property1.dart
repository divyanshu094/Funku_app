import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Property1.dart';

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
              
              Stepper(
                  type: StepperType.horizontal,
                  steps: getSteps(),
                  elevation: 0,
                  controlsBuilder: (context, onStepContinue) {
                    return Container(
                      child: Row(
                        
                      ),
                    );
                  },
                  currentStep: currentStep,
                  onStepContinue: () {
                    currentStep == 0 ? null :
                    setState(() => currentStep-=1);
                  },
                  onStepTapped: (Step) => setState(() => currentStep = Step),
                  onStepCancel: () {
                    final isLastStep = currentStep == getSteps().length - 1;
                    if (isLastStep) {
                      print('complited');
                      
                      // send data to server
                    } else {
                    setState(() => currentStep += 1);
                    }
                  },
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
                  ),
            ],
          ),
        ),
        )
      // )
    );
  }
  List<Step> getSteps() => [
    Step(
        state: currentStep > 0? StepState.complete :StepState.editing,
        isActive: currentStep >= 0,
        title: Text('Step 1'), 
        content: Container(
        ),
      ),
      Step(
        state: currentStep > 1? StepState.complete :StepState.disabled,
        isActive: currentStep>= 1,
        title: Text('Step 2'), 
        content: Container(),
      ),
      Step(
        isActive: currentStep>= 2,
        title: Text('Step 3'), 
        content: Container(),
      ),
    ];
DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
        ),
      );
}