import 'package:flutter/material.dart';

class EscogerPostulanteView extends StatefulWidget {
  const EscogerPostulanteView({super.key});

  @override
  State<EscogerPostulanteView> createState() => _EscogerPostulanteViewState();
}

class _EscogerPostulanteViewState extends State<EscogerPostulanteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Escoger Postulante'),
            SizedBox(
              height: 10,
            ),
            TextFormField(),
            SizedBox(
              height: 10,
            ),
            Text('Escoger Postulante'),
            TextButton(
                onPressed: () {},
                child: Container(
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Text('BUSCAR'),
                )),
            SizedBox(
              height: 10,
            ),
            Text('Seleccionar fecha:'),
            SizedBox(
              height: 10,
            ),
            Text('Seleccionar hora'),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 40,
              height: 10,
              decoration:
              BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            )
          ],
        ),
      ),
    );
  }
}