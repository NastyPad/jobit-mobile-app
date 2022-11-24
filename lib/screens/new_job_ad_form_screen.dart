import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/services/ad_service.dart';
import 'package:intl/intl.dart';

class newAdJob extends StatefulWidget {
  @override
  State<newAdJob> createState() => _newAdJobState();
}

class _newAdJobState extends State<newAdJob> {
  late String titleValue;
  late String desciptionValue;
  late String salaryValue;
  List<String> list = ["Web Programing with ASP.NET", "Web Programing with Flutter", "Java Programing"];
  String viewList = "Select an option";
  late String optionSelected;
  bool visible = false;

  static final DateTime now = DateTime.now();
  static final DateFormat formatter =DateFormat('dd/MM/yyyy');
  final String formatted = formatter.format(now);

  TextEditingController _controllerTitle = TextEditingController();
  TextEditingController _controllerDescription = TextEditingController();
  TextEditingController _controllerSalary = TextEditingController();
  TextEditingController _controllerDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GlobalKey formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white70,
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
                width:500,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)
                  ),
                ),
                child: Text(
                  "Create Ad",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                )
            ),
            Expanded(
              child: Form(
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
                        controller: _controllerTitle,
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
                        controller: _controllerDescription,
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
                        controller: _controllerSalary,
                        validator: (value){
                          if (value!.isEmpty){
                            return "Fill this field";
                          }
                        },
                      ),
                    ),
                    
                    Expanded(
                      child: Container(
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
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),

                        ),
                        margin: const EdgeInsets.only(top: 20, left: 17),

                        child: Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Checkbox(
                                  value: visible,
                                  onChanged: (value){
                                    setState((){
                                      visible = value!;
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      visible = !visible;
                                    });
                                  },
                                  child: Text("This ad will be visible"),
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
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
                              onPressed: () async {
                                int salary = int.parse(_controllerSalary.text);
                                Map<String, dynamic> dataUpdate = {
                                  'title': _controllerTitle.text,
                                  'description': _controllerDescription.text,
                                  'salary': salary,
                                  'date': formatted.toString(),
                                  'img': "avnskaoe"
                                };

                                bool status = await AdService().postAd(dataUpdate);

                                if(status){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Post added'),));
                                }else{
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to add the post')));
                                }

                                print(formatted);

                                Navigator.pop(context);
                              },
                              child: Text(
                                'CREAT',
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

