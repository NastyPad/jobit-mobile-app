import 'package:flutter/material.dart';

class Tag extends StatefulWidget {
  String tagName;
  Tag(this.tagName, {Key? key}) : super(key: key);

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
          Text(super.widget.tagName, style: TextStyle(color: Colors.black45, fontSize: 12)),
          Padding(padding: EdgeInsets.only(right: 5.0)),
          Icon(Icons.sell, color: Colors.black45, size: 12,)
        ],
      ),
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(border: Border.all(color: Colors.black38), borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
