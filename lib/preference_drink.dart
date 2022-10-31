import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreferDrink extends StatefulWidget {
  const PreferDrink({Key? key}) : super(key: key);

  @override
  State<PreferDrink> createState() => _PreferDrinkState();
}

class _PreferDrinkState extends State<PreferDrink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drink(),
    );
  }
}

class Drink extends StatefulWidget {
  Drink({Key? key}) : super(key: key);

  @override
  State<Drink> createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  bool _click = true;
  late int selectedIndex;
  List<String> chipList = [
    "Imported beer",
    "Draught beer",
    "Indian beer",
    "Brandy",
    "Cognac",
    "Champagne",
    "Cocktails",
    "Gin",
    "Martini",
    "Mocktails",
    "Rum",
    "Tequila",
    "Vermouth",
    "Vodka",
    "Whiskey",
    "Wine",
    "IMFL",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: const Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "What kind of drink you prefer?",
                    style: GoogleFonts.merriweather(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "“You can select upto 3”",
                    style: GoogleFonts.merriweather(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Wrap(
                    spacing: 15.0,
                    runSpacing: 10.0,
                    children: <Widget>[
                      choiceChipWidget(chipList),
                    ],
                  )),
              // ChoiceChip(
              //   label: const Text('Imported beer',
              //   style: TextStyle(
              //     // color: _isSelected ? Color.fromARGB(255, 32, 9, 99) : Colors.white,
              //   )),
              //    backgroundColor: Color.fromARGB(255, 32, 9, 99),
              //   selectedColor: Colors.white,
              //   disabledColor: Color.fromARGB(255, 32, 9, 99),
              //   selected: _isSelected,
              //   onSelected: (bolvalue) {
              //     setState(() {
              //       _isSelected = bolvalue;
              //     });
              //   },
              //   )
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.37,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(60),
                  // side: BorderSide(width: 2,),
                  shape: StadiumBorder(),
                  primary: Colors.white,
                  onSurface: Colors.white,
                ),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VerifyLogin()));
                },
                child: Text("Let’s party",
                    style: TextStyle(
                        color: Color.fromARGB(255, 32, 9, 99),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class choiceChipWidget extends StatefulWidget {
  final List<String> reportList;

  choiceChipWidget(this.reportList);

  @override
  _choiceChipWidgetState createState() => new _choiceChipWidgetState();
}

class _choiceChipWidgetState extends State<choiceChipWidget> {
  String selectedChoice = "";

  _buildChoiceList() {
    List<Widget> choices = [];
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(5.0),
        child: ChoiceChip(
          label: Text(item),
          labelPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 32, 9, 99),
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
          backgroundColor: Color.fromARGB(255, 32, 9, 99).withOpacity(0.55),
          selectedColor: Colors.white,
          elevation: 0,
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
