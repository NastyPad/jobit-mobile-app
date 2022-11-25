import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:jobit_mobile_app/widgets/subscriptions/plan_item.dart';

import '../services/select_postulant_service.dart';

class SelectPostulantScreen extends StatefulWidget {
  const SelectPostulantScreen({super.key});

  @override
  State<SelectPostulantScreen> createState() => _SelectPostulantScreenState();
}

class _SelectPostulantScreenState extends State<SelectPostulantScreen> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override



  @override
  Widget build(BuildContext context){

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top : 00.0, bottom: 10.0),
                child: Center(
                  child: Text(
                      "Escoger postulante",
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              Center(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:   TypeAheadField(
                    textFieldConfiguration: TextFieldConfiguration(
                        autofocus: true,
                        style: DefaultTextStyle.of(context).style.copyWith(
                            fontStyle: FontStyle.italic
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        )
                    ),
                    suggestionsCallback: (pattern) async {
                      return await BackendService.getSuggestion(pattern);
                    },
                    itemBuilder: (context, suggestion) {
                      return ListTile(
                        leading: Icon(Icons.shopping_cart),
                        title: Text(suggestion['name']),
                        subtitle: Text('\$${suggestion['price']}'),
                      );
                    },
                    onSuggestionSelected: (suggestion) {

                    },
                  ),
                )

              ),
              Center(
                child: Text(
                    "Seleccionar fecha",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold

                    )
                ),
              ),
              SizedBox(height: 20.0),

              SizedBox(height:30.0),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("${selectedDate.toLocal()}".split(' ')[0]),
                    SizedBox(height: 20.0,),
                    ElevatedButton(style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) )
                    ),
                      onPressed: () => _selectDate(context),
                      child: Text('Select date'),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        "Seleccionar hora",
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    ElevatedButton(style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) )
                    ),
                      onPressed: () => _selectDate(context),
                      child: Text('Enviar ',style: TextStyle(
                          fontSize: 25.0
                      ),),
                    ),
                  ],
                )

              ),

            ]
        ),
      ),
    );
  }
}