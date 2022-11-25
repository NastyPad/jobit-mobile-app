import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobit_mobile_app/screens/register_employee_page.dart';
import 'package:jobit_mobile_app/screens/register_employer_page.dart';
class RegisterPage extends StatefulWidget {

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Create an account',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 50,
                  ),
                ),
                const Text('Welcome. Get\'s started as: ',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 50),
                //Employer option ----------------------------------------------
                const Image(
                  image: NetworkImage('https://cdn-icons-png.flaticon.com/512/912/912316.png'),
                  height: 100,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: Material(
                    color: Colors.amber.shade600,
                    borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                      splashColor: Colors.amber.shade800,
                      borderRadius: BorderRadius.circular(12),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>  RegisterEmployeePage(),
                        ));
                      },
                      child:Container(
                        padding: EdgeInsets.all(15),
                        child: const Center(
                          child: Text('Employee',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),

                //Employee option ----------------------------------------------
                const Image(
                  image: NetworkImage('https://cdn-icons-png.flaticon.com/512/912/912318.png'),
                  height: 100,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: Material(
                    color: Colors.amber.shade600,
                    borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                      splashColor: Colors.amber.shade800,
                      borderRadius: BorderRadius.circular(12),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>  RegisterEmployerPage(),
                        ));
                      },
                      child:Container(
                        padding: EdgeInsets.all(15),
                        child: const Center(
                          child: Text('Employer',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
    );
  }
}