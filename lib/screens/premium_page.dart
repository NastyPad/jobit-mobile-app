import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/subscriptions/plan_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: NetworkImage('https://cdn-icons-png.flaticon.com/512/2385/2385866.png'),
                height: 100,
              ),
              SizedBox(height: 20),
              Text('GET PREMIUM',
                style: GoogleFonts.anton(
                  fontSize: 30,
                  color: Colors.amber,
                ),
              ),
              SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text('Publica anuncios sin limites',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text('Recibe la mayor cantidad de usuarios',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('CONOCE NUESTROS PLANES',
                style: GoogleFonts.anton(
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: plan(" Plan Semestral ", "\$530"),
                    elevation: 5,
                    color: Colors.grey[850],
                  ),
                  Card(
                    child:  plan(" Plan Trimestral", "\$270"),
                    elevation: 5,
                    color: Colors.grey[850],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: plan(" Plan  Mensual  ", "\$100"),
                      elevation: 5,
                      color: Colors.grey[850],
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.amber,
                            minimumSize: Size(100, 90.0)
                        ),
                        onPressed: () {
                           showDialog(context: context,
                           builder: (BuildContext context) {
                       return AlertDialog(
          
                       )
                        });
                        }, child:
                    const Text("ADQUIRIR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                        )))
                  ]

              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
