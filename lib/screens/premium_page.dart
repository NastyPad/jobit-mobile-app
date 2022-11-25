import 'package:credit_card_input_form/credit_card_input_form.dart';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/subscriptions/plan_item.dart';
import 'package:google_fonts/google_fonts.dart';

class PremiumPage extends StatelessWidget {
   PremiumPage({Key? key}) : super(key: key);
  final Map<String, String> customCaptions = {
    'PREV': 'Prev',
    'NEXT': 'Next',
    'DONE': 'Done',
    'CARD_NUMBER': 'Card Number',
    'CARDHOLDER_NAME': 'Cardholder Name',
    'VALID_THRU': 'Valid Thru',
    'SECURITY_CODE_CVC': 'Security Code (CVC)',
    'NAME_SURNAME': 'Name',
    'MM_YY': 'MM/YY',
    'RESET': 'Reset',
  };
  final cardDecoration = BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0, 8))
      ],
      gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.black45,
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
      borderRadius: BorderRadius.all(Radius.circular(15)));

  final buttonStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(30.0),
    gradient: LinearGradient(
        colors: [
          const Color(0xfffcdf8a),
          const Color(0xfff38381),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp),
  );


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
                         content: AnimatedContainer(
                           duration: Duration(milliseconds: 300),
                             child: Stack(children: [
                            SizedBox(
                              width: 400.0,
                              height: 2000.0,
                              child:
                              CreditCardInputForm(
                                showResetButton: true,
                                onStateChange: (currentState, cardInfo) {
                                  print(currentState);
                                  print(cardInfo);
                                },
                                customCaptions: customCaptions,
                                frontCardDecoration: cardDecoration,
                                backCardDecoration: cardDecoration,
                                // prevButtonStyle: buttonStyle,
                                // nextButtonStyle: buttonStyle,
                                // prevButtonTextStyle: buttonTextStyle,
                                // nextButtonTextStyle: buttonTextStyle,
                                // resetButtonTextStyle: buttonTextStyle,
                              ),
                            )
                          ])
                       )
                             );
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
