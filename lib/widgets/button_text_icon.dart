import 'package:flutter/material.dart';

class ButtonTextIcon extends StatefulWidget {
  Color bgColor;
  Color fgColor;
  IconData icon;
  String buttonText;

  ButtonTextIcon(this.bgColor, this.fgColor, this.buttonText, this.icon,
      {Key? key})
      : super(key: key);

  @override
  State<ButtonTextIcon> createState() => _ButtonTextIconState();
}

class _ButtonTextIconState extends State<ButtonTextIcon> {
  @override
  Widget build(BuildContext context) {
    final buttonIcon = ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(17)))),
            backgroundColor: MaterialStatePropertyAll(widget.bgColor),
            foregroundColor: MaterialStatePropertyAll(widget.fgColor)),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              Text(
                widget.buttonText,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                widget.icon,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center 

          ),
        ));

    return buttonIcon;
  }
}

class ButtonTextIconSimple extends StatefulWidget {
  Color bgColor;
  Color fgColor;
  IconData icon;
  String buttonText;

  ButtonTextIconSimple(this.bgColor, this.fgColor, this.buttonText, this.icon,
      {Key? key})
      : super(key: key);

  @override
  State<ButtonTextIconSimple> createState() => _ButtonTextIconSimpleState();
}

class _ButtonTextIconSimpleState extends State<ButtonTextIconSimple> {
  @override
  Widget build(BuildContext context) {
    final buttonIcon = ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            animationDuration: Duration(microseconds: 500),
            overlayColor: MaterialStatePropertyAll(Colors.amber.shade100),
            elevation: MaterialStatePropertyAll(0),
            padding:
                MaterialStatePropertyAll(EdgeInsets.only(left: 40, right: 40)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(17)))),
            backgroundColor: MaterialStatePropertyAll(widget.bgColor),
            foregroundColor: MaterialStatePropertyAll(widget.fgColor)),
        child: Row(
          children: [
            Text(
              widget.buttonText,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            Padding(padding: EdgeInsets.all(2)),
            Icon(
              widget.icon,
              size: 20,
            )
          ],
        ));

    return buttonIcon;
  }
}
