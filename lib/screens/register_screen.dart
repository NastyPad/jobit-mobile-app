import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                  height: 150,
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
                        onTap: () {
                          Navigator.pushNamed(context, 'register_employee');
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
                SizedBox(height: 70),

                //Employee option ----------------------------------------------
                const Image(
                  image: NetworkImage('https://cdn-icons-png.flaticon.com/512/912/912318.png'),
                  height: 150,
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
                      onTap: () {
                        Navigator.pushNamed(context, 'register_employer');
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
              ],
            ),
          ),
        )
    );
  }
}
