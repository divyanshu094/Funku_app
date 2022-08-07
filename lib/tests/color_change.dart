import 'package:flutter/material.dart';
class ColorChange extends StatefulWidget {
  const ColorChange({ Key? key }) : super(key: key);

  @override
  State<ColorChange> createState() => _ColorChangeState();
}


class _ColorChangeState extends State<ColorChange> {
  double _containerHeight = double.infinity;
  Color _containerColor = Colors.blue;
  bool _chan = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
          child: InkWell(
        child: Container(
          width: double.infinity,
          height: _containerHeight,
          color: _containerColor,
        ),
        onTap: () {
          _chan ?
          setState(() {
            
            _containerHeight = 400;
            _containerColor = Colors.red;
            _chan = false;
          }) : 
          setState(() {
            
            _containerHeight = 400;
            _containerColor = Colors.amber;
            _chan = true;
          });
        },
      )),
    );
  }
}