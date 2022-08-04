import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _dogeNames = [
    'Beagle',
    'Labrador',
    'Retriever',
    'Beagle',
    'Labrador',
    'Retriever',
    'Beagle',
    'Labrador',
    'Retriever',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Chip List Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Basic usage
          const Text('Basic usage'),
          const SizedBox(
            height: 10,
          ),
          ChipList(
            listOfChipNames: _dogeNames,
            activeBgColorList: [Theme.of(context).primaryColor],
            inactiveBgColorList: [Colors.white],
            activeTextColorList: [Colors.white],
            inactiveTextColorList: [Theme.of(context).primaryColor],
            listOfChipIndicesCurrentlySeclected: [0],
            shouldWrap: true,
          ),

          // Using [supportsMultiSelect]
          const SizedBox(
            height: 20,
          ),
          const Text('Using supportsMultiSelect'),
          const SizedBox(
            height: 10,
          ),
          ChipList(
            listOfChipNames: _dogeNames,
            supportsMultiSelect: true,
            activeBgColorList: [ Colors.white],
            inactiveBgColorList: [Colors.black],
            activeTextColorList: [Colors.blue],
            inactiveTextColorList: [Colors.white],
            listOfChipIndicesCurrentlySeclected: [0],
           shouldWrap: true,
           
          ),
          Visibility(
            visible: true,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 2),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.white24, Colors.white10],
          )
          ),
          child: Wrap(children: [Text('data data data data data vdatav vdata vvv  data datavdata data  data data data  datadatadatadatadata vvvdata vv')]),
            )
            ),

          // Using [extraOnToggle]
          const SizedBox(
            height: 20,
          ),
          Text('Using extraOnToggle: ${_dogeNames[_currentIndex]}'),
          const SizedBox(
            height: 10,
          ),
          ChipList(
            listOfChipNames: _dogeNames,
            activeBgColorList: [Theme.of(context).primaryColor],
            inactiveBgColorList: [Colors.white],
            activeTextColorList: [Colors.white],
            inactiveTextColorList: [Theme.of(context).primaryColor],
            listOfChipIndicesCurrentlySeclected: [_currentIndex],
            extraOnToggle: (val) {
              _currentIndex = val;
              setState(() {});
            },
          ),

          // Using [shouldWrap]
          const SizedBox(
            height: 20,
          ),
          const Text('Using shouldWrap'),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 150,
            child: ChipList(
              listOfChipNames: const [
                'a',
                'really',
                'long',
                'list',
                'of',
                'chips',
                'that',
                'can',
                'be',
                'wrapped',
              ],
              activeBgColorList: [Theme.of(context).primaryColor],
              inactiveBgColorList: const [
                Colors.white,
              ],
              activeTextColorList: [Colors.white],
              inactiveTextColorList: [Theme.of(context).primaryColor],
              listOfChipIndicesCurrentlySeclected: [0],
              shouldWrap: true,
              runSpacing: 10,
              spacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}