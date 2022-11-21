import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/button_text_icon.dart';

class CompanyItem extends StatefulWidget {
  const CompanyItem({Key? key}) : super(key: key);

  @override
  State<CompanyItem> createState() => _CompanyItemState();
}

class _CompanyItemState extends State<CompanyItem> {
  @override
  Widget build(BuildContext context) {
    String companyPhoto =
        "https://rotulosmatesanz.com/wp-content/uploads/2017/09/2000px-Google_G_Logo.svg_.png";
    final photo = Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(image: NetworkImage(companyPhoto))),
    );

    final _companyItem = Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              photo,
              Padding(padding: EdgeInsets.all(5)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Google", style: TextStyle(fontWeight: FontWeight.w600)),
                  Text("IT Company", style: TextStyle(fontSize: 12)),
                  Text("Mountain View",
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              )
            ],
          ),
          ButtonTextIconSimple(
              Colors.transparent, Colors.amber, "Follow", Icons.add)
        ],
      ),
    );

    return _companyItem;
  }
}
