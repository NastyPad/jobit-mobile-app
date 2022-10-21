import 'package:flutter/material.dart';

class Tag extends StatefulWidget {
  const Tag({Key? key}) : super(key: key);

  @override
  State<Tag> createState() => _TagState();
}

class _TagState extends State<Tag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Software Dev"),
          Padding(padding: EdgeInsets.only(right: 5.0)),
          Icon(Icons.sell)
        ],
      ),
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(border: Border.all(color: Colors.black38), borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
