import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/subscriptions/plan_item.dart';

class Plans extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top : 50.0, bottom: 10.0),
                child: Center(
                  child: Text(
                      "Aún no eres PREMIUN?",
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              Center(
                child: Text(
                    "Publica anuncios sin limites\n\nRecibe la mayor cantidad de\npostulantes",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,

                    )
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                    "Conoce nuestros planes",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
              SizedBox(height:30.0),
              Padding(padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child:  GridView.count(crossAxisCount: 2,shrinkWrap: true ,crossAxisSpacing: 30.0,mainAxisSpacing: 30.0, children: [
                    Container(
                      width: 20.0,
                      color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                              color: Colors.grey,
                              width: double.infinity,
                              height: 35.0,
                              child:  Center(
                                child: Text("PLan Semestral"
                                  ,style:
                                  TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0
                                  ),
                                ),
                              )
                          ),
                          Expanded(child: Container(
                              color: Colors.white ,
                              width: double.infinity,
                              child:  Center(
                                child: Text("PLan Semestral"
                                  ,style:
                                  TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18.0
                                  ),
                                ),
                              )
                          ))
                        ],


                      ),
                    ),
                    Container(
                      width: 20.0,
                      color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                              color: Colors.grey,
                              width: double.infinity,
                              height: 35.0,
                              child:  Center(
                                child: Text("PLan Semestral"
                                  ,style:
                                  TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0
                                  ),
                                ),
                              )
                          ),
                          Expanded(child: Container(
                              color: Colors.white ,
                              width: double.infinity,
                              child:  Center(
                                child: Text("PLan Semestral"
                                  ,style:
                                  TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18.0
                                  ),
                                ),
                              )
                          ))
                        ],


                      ),
                    ),
                    Container(
                      width: 20.0,
                      color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                              color: Colors.grey,
                              width: double.infinity,
                              height: 35.0,
                              child:  Center(
                                child: Text("PLan Semestral"
                                  ,style:
                                  TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0
                                  ),
                                ),
                              )
                          ),
                          Expanded(child: Container(
                              color: Colors.white ,
                              width: double.infinity,
                              child:  Center(
                                child: Text("PLan Semestral"
                                  ,style:
                                  TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18.0
                                  ),
                                ),
                              )
                          ))
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 40.0),
                      child: ElevatedButton( style: TextButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) )

                      ),onPressed: (){
                        showDialog(context: context, builder: (BuildContext context){
                          return AlertDialog(
                            title: Text(
                                "helo kitty"
                            ),
                          );
                        });
                      }, child: Container(
                        color: Colors.amber,
                        child: Text("ADQUIRIR", style: TextStyle(
                            fontSize: 25.0
                        ),),
                      )),
                    )



                  ],)
              ),

            ]
        ),
      ),
    );
  }

}