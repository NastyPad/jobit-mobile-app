import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/screens/edit_job_ad_form_screen.dart';
import 'package:jobit_mobile_app/screens/new_job_ad_form_screen.dart';

import '../widgets/alertDialog_delete.dart';
import '../widgets/title_ads.dart';
import 'ads_job_more_information_petitioner_screen.dart';

class AdsJob extends StatefulWidget {
  @override
  State<AdsJob> createState() => _AdsJobState();
}

class _AdsJobState extends State<AdsJob> {
  List<String> title = ["Programador de aplicaciones móviles", "Programador backend en ASP.NET"];
  List<String> description = ["totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.", "totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo."];
  List<String> salary = ["S/. 2000", "S/. 3000"];
  List<String> date = ["5/1/2022", "2/4/2022"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: _menu),
        title: Text("JoBit"),
      ),
      body: Column(
          children: <Widget>[
            Center(
                child: CardContainer()
            ),
            Flexible(

                child: SizedBox(
                    height: 600.0,
                    width: 400.0,

                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder:(BuildContext context, int index){
                          return Card(
                            elevation: 5.0,
                            child: Column(
                              children: <Widget> [

                                Row(

                                  children: <Widget> [
                                    Image.network("https://cdn.pixabay.com/photo/2022/10/23/22/45/highway-7542272_960_720.jpg", width: 150, height: 150),
                                    Column(
                                      children: <Widget> [
                                        SizedBox(
                                          width: 230,
                                          height: 15,
                                          child: Expanded(
                                            child: Text(
                                              date[index],
                                              textDirection: TextDirection.ltr,
                                              textAlign: TextAlign.right,),
                                          ),
                                        ),
                                        Center(
                                            child: SizedBox(
                                                width: 240,
                                                height: 40,
                                                child: Expanded(child: Text(
                                                  title[index],
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black38,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),)
                                            )
                                        ),


                                        SizedBox(
                                            width: 230,
                                            child: Expanded(child:
                                                TextButton(
                                                  child: Text(
                                                    description[index],
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 4,
                                                    style: TextStyle(
                                                      color: Colors.black
                                                    ),
                                                  ),
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => detailJobAd()));
                                                  },
                                                )
                                            )
                                        ),

                                        SizedBox(
                                            width: 230,
                                            child: Expanded(child: Text(
                                              salary[index],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                            )
                                        ),

                                        Row(
                                          children: <Widget> [
                                            TextButton(
                                                style: TextButton.styleFrom(
                                                    primary: Colors.blue,
                                                    onSurface: Colors.red
                                                ),
                                                onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => updateAdJob()));
                                                },
                                                child: Text(
                                                  'Edit',
                                                  style: TextStyle(
                                                      color: Colors.amber
                                                  ),
                                                )),
                                            TextButton(
                                                onPressed: (){
                                                  showDialog(
                                                    context: context,
                                                    builder: (BuildContext context){
                                                      return deleteConfirm();
                                                    },
                                                  );
                                                },
                                                child: Text(
                                                  'Delete',
                                                  style: TextStyle(
                                                      color: Colors.red
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ],
                                    )


                                  ],
                                )
                              ],
                            ),
                          );
                        }
                    )
                )
            )



          ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => newAdJob()));
        },
      ),
    );
  }

  void _menu(){

  }
}
