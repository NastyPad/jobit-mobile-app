import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterEmployerPage extends StatefulWidget {
  const RegisterEmployerPage({Key? key}) : super(key: key);

  @override
  State<RegisterEmployerPage> createState() => _RegisterEmployerPageState();
}

class _RegisterEmployerPageState extends State<RegisterEmployerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Image(
                  image: NetworkImage('https://cdn-icons-png.flaticon.com/512/3712/3712119.png'),
                  height: 70,
                ),
                SizedBox(height: 20),
                //Hello again------------------------------------
                Text('Employer account!',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 30),

                //Razon social textfield--------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Business Name',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //RUC textfield-------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'R.U.C',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //email textfield-----------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //password textfiel---------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //rewrite password----------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Repeat Password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                //Sing up button------------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Material(
                    color: Colors.amber.shade600,
                    borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                      splashColor: Colors.amber.shade800,
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                      },
                      child:Container(
                        padding: EdgeInsets.all(20),
                        child: const Center(
                          child: Text('Sing Up',
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