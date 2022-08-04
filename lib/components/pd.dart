import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AvatarIcon extends StatelessWidget {
  final String? iconSrc;
  final Function? press;
  const AvatarIcon({
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
        decoration: BoxDecoration(
           
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc!,
          height: 140,
          width: 140,
          color: Colors.white70,
        ),
      ),
    );
  }
}