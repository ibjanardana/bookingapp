import 'package:bookingapp/config/config.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      this.type = PrimaryButtonType.type1,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);
  final PrimaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.type1
        ? _type1()
        : type == PrimaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: AppFont.componentSmall,
          )),
    );
  }

  Widget _type2() {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppFont.componentSmall,
        ));
  }

  Widget _type3() {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppFont.componentSmall,
        ));
  }
}

enum PrimaryButtonType {
  type1,
  type2,
  type3,
}
