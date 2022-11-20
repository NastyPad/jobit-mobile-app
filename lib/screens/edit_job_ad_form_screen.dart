import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class updateAdJob extends StatefulWidget {
  @override
  State<updateAdJob> createState() => _updateAdJobState();
}

class _updateAdJobState extends State<updateAdJob> {
  late String titleValue;
  late String desciptionValue;
  late String salaryValue;
  List<String> list = ["Web Programing with ASP.NET", "Web Programing with Flutter", "Java Programing"];
  String viewList = "Select an option";
  late String optionSelected;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    GlobalKey formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        title: Text("JoBit"),
      ),
      body:
      Container(
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white
        ),

        child: Column(
          children: <Widget>[
            Container(
                width:10000,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)
                  ),
                ),
                child: Text(
                  "Update Ad",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                )
            ),
            Form(
              key: formKey,
              child: Column(

                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)
                    ),
                    margin: const EdgeInsets.only(top: 40),
                    width: 350,
                    padding: const EdgeInsets.symmetric(horizontal: 15),

                    child: TextFormField(
                      decoration: InputDecoration (labelText: "Input the ad title: "),
                      onSaved: (value){
                        titleValue = value!;
                      },
                      validator: (value){
                        if (value!.isEmpty){
                          return "Fill this field";
                        }
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)
                    ),
                    margin: const EdgeInsets.only(top: 20),
                    width: 350,
                    padding: const EdgeInsets.symmetric(horizontal: 15),

                    child: TextFormField(
                      decoration: InputDecoration (labelText: "Input the ad description: "),
                      onSaved: (value){
                        titleValue = value!;
                      },
                      validator: (value){
                        if (value!.isEmpty){
                          return "Fill this field";
                        }
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)
                    ),
                    margin: const EdgeInsets.only(top: 20),
                    width: 350,
                    padding: const EdgeInsets.symmetric(horizontal: 15),

                    child: TextFormField(
                      decoration: InputDecoration (labelText: "Salary: "),
                      onSaved: (value){
                        salaryValue = value!;
                      },
                      validator: (value){
                        if (value!.isEmpty){
                          return "Fill this field";
                        }
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)
                    ),
                    margin: const EdgeInsets.only(top: 20),

                    padding: const EdgeInsets.symmetric(horizontal: 15),

                    child: DropdownButton(
                      items: list.map((String a){
                        return DropdownMenuItem(
                            value: a,
                            child: Text(a));
                      }).toList(),

                      onChanged: (_value) => {
                        setState((){
                          viewList = _value!;
                          optionSelected = viewList;
                        })
                      },
                      hint: Text(viewList),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    margin: const EdgeInsets.only(top: 20, left: 17),

                    child: Row(
                      children: [
                        Checkbox(
                          value: visible,
                          onChanged: (value){
                            setState((){
                              visible = value!;
                            });
                          },
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              visible = !visible;
                            });
                          },
                          child: Text("This ad will be visible"),
                        )

                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text(
                            'CLOSE',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text(
                            'EDIT',
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

