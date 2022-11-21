import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/alertDialog_AcceptApplicantJob.dart';
import '../widgets/alertDialog_RejectApplicantJob.dart';

class detailJobAd extends StatefulWidget {
  @override
  State<detailJobAd> createState() => _detailJobAdState();
}

class _detailJobAdState extends State<detailJobAd> {
  // List<String> name = ["Alejandro Pizarro", "Alejandro Pizarro","Alejandro Pizarro"];
  // List<String> imgApplicant = [
  //   "https://media.istockphoto.com/id/1364917563/es/foto/hombre-de-negocios-sonriendo-con-los-brazos-cruzados-sobre-fondo-blanco.jpg?s=612x612&w=is&k=20&c=h5c8OJcQy3zF9J0iUVKMYfANgEaG7gAyHDe03usP0AE=",
  //   "https://media.istockphoto.com/id/1364917563/es/foto/hombre-de-negocios-sonriendo-con-los-brazos-cruzados-sobre-fondo-blanco.jpg?s=612x612&w=is&k=20&c=h5c8OJcQy3zF9J0iUVKMYfANgEaG7gAyHDe03usP0AE=",
  //   "https://media.istockphoto.com/id/1364917563/es/foto/hombre-de-negocios-sonriendo-con-los-brazos-cruzados-sobre-fondo-blanco.jpg?s=612x612&w=is&k=20&c=h5c8OJcQy3zF9J0iUVKMYfANgEaG7gAyHDe03usP0AE="
  // ];
  // List<String> email = ["alejandro20@gmail.com", "alejandro20@gmail.com", "alejandro20@gmail.com"];

  List applicants = [
    {
      'name': 'Alejandro Pizarro',
      'imgApplicant':
          'https://media.istockphoto.com/id/1364917563/es/foto/hombre-de-negocios-sonriendo-con-los-brazos-cruzados-sobre-fondo-blanco.jpg?s=612x612&w=is&k=20&c=h5c8OJcQy3zF9J0iUVKMYfANgEaG7gAyHDe03usP0AE=',
      'email': "alejandro20@gmail.com",
    },
    {
      'name': 'Alejandro Pizarro',
      'imgApplicant':
          'https://media.istockphoto.com/id/1364917563/es/foto/hombre-de-negocios-sonriendo-con-los-brazos-cruzados-sobre-fondo-blanco.jpg?s=612x612&w=is&k=20&c=h5c8OJcQy3zF9J0iUVKMYfANgEaG7gAyHDe03usP0AE=',
      'email': "alejandro20@gmail.com",
    },
    {
      'name': 'Alejandro Pizarro',
      'imgApplicant':
          'https://media.istockphoto.com/id/1364917563/es/foto/hombre-de-negocios-sonriendo-con-los-brazos-cruzados-sobre-fondo-blanco.jpg?s=612x612&w=is&k=20&c=h5c8OJcQy3zF9J0iUVKMYfANgEaG7gAyHDe03usP0AE=',
      'email': "alejandro20@gmail.com",
    },
    {
      'name': 'Alejandro Pizarro',
      'imgApplicant':
          'https://media.istockphoto.com/id/1364917563/es/foto/hombre-de-negocios-sonriendo-con-los-brazos-cruzados-sobre-fondo-blanco.jpg?s=612x612&w=is&k=20&c=h5c8OJcQy3zF9J0iUVKMYfANgEaG7gAyHDe03usP0AE=',
      'email': "alejandro20@gmail.com",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
          title: Text("JoBit"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin:
                    EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 7.0,
                        offset: Offset(0.0, 0))
                  ],
                ),
                width: 600,
                height: 250,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.yellow),
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(left: 15),
                          child: Text(
                            'Mobile development',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(0),
                            margin: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "Mobile application programmer",
                              style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              margin:
                                  EdgeInsets.only(top: 6, left: 20, right: 10),
                              child: Text(
                                "totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                //30
                margin:
                    EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 7.0,
                        offset: Offset(0.0, 0))
                  ],
                ),
                width: 600,
                height: 120,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Present by: "),
                    Image.network(
                        "https://cdn.pixabay.com/photo/2022/10/23/22/45/highway-7542272_960_720.jpg",
                        width: 100,
                        height: 100),
                    Container(
                      padding: EdgeInsets.only(),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Colors.amber),
                      child: TextButton(
                          onPressed: null,
                          child: Text(
                            "Visit the WebSite",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          )),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 10, right: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 7.0,
                        offset: Offset(0.0, 0))
                  ],
                ),
                width: 600,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "Applicants",
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 300,
                        child:
                            // ListView.builder(
                            //   itemCount: name.length,
                            //   itemBuilder: (BuildContext context, int index) {
                            ListView(
                          children: [
                            for (var i in applicants)
                              Card(
                                  child: Container(
                                margin: EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.network(i['imgApplicant'],
                                        width: 100, height: 100),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          i["name"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.amber,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          i["email"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    Flexible(
                                      child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return acceptApplicantConfirm();
                                              },
                                            );
                                          },
                                          icon: Icon(
                                            Icons.check_circle,
                                            size: 40,
                                            color: Colors.greenAccent,
                                          )),
                                    ),
                                    Flexible(
                                      child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return rejectApplicantConfirm();
                                              },
                                            );
                                          },
                                          icon: Icon(
                                            Icons.cancel,
                                            size: 40,
                                            color: Colors.redAccent,
                                          )),
                                    )
                                  ],
                                ),
                              ))
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
