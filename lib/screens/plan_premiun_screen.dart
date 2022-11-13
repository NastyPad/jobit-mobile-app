


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/subscriptions/plan_item.dart';
class PlanPremium extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),

      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 50.0, bottom: 10.0),
                child: Center(
                  child: Text(
                      "Sé un usuario\nPremium",
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Padding(padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: GridView.count(crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 30.0,
                    mainAxisSpacing: 30.0,
                    children: [
                      Container(
                        width: 20.0,
                        color: Colors.red,
                        child: Column(
                          children: [
                            Image.network(
                                "https://c8.alamy.com/compes/2bg899m/nino-en-la-computadora-nino-de-dibujos-animados-aprendiendo-en-el-escritorio-con-el-ordenador-portatil-estudiante-estudiando-el-concepto-de-vector-de-codigo-nino-sonriendo-en-la-programacion-del-monitor-aprender-ilustracion-en-linea-2bg899m.jpg")
                          ],
                        ),
                      ),
                      Container(
                          width: 20.0,
                          color: Colors.white,
                          child: Text(
                              "Aparece en las\nprimeras\nposiciones de\n busqueda de\n profesionales",
                              style:
                              TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0
                              )
                          )

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
                                child: Center(
                                  child: Text("PLan Mensual"
                                    , style:
                                    TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0
                                    ),
                                  ),
                                )
                            ),
                            Expanded(child: Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: Center(
                                  child: Text("60 dolares"
                                    , style:
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
                          color: Colors.white,
                          child: Text(
                              "Sé recomendado a\nempresas de\nacuerdo a tus habilidades y\ntalento",
                              style:
                              TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0
                              )
                          )

                      ),
                      Container(
                        width: 20.0,
                        color: Colors.white,
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(vertical: 50.0),
                        child: ElevatedButton(style: TextButton.styleFrom(
                            backgroundColor: Colors.amber,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0))
                        ), onPressed: () {
                          showDialog(context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      "Pagar con tarjeta",
                                    style: TextStyle(
                                      color: Colors.blue
                                    ),
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
