import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoIcon extends StatelessWidget {
  final String? iconSrc;
  final Function? press;
  const LogoIcon({
    Key? key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(0),
        
        child: SvgPicture.asset(
          iconSrc!,
          height: 350,
          width: 350,
        ),
      ),
    );
  }
}
class GenderIcon extends StatelessWidget {
  final String? iconSrc;
  final Function? press;
  const GenderIcon({
    Key? key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        // margin: const EdgeInsets.symmetric(horizontal: 1),
        padding: const EdgeInsets.all(0),
        
        child: SvgPicture.asset(
          iconSrc!,
          height: 90,
          width: 90,
        ),
      ),
    );
  }
}