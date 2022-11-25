import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as http;

class RegisterEmployeePage extends StatefulWidget {
  const RegisterEmployeePage({Key? key}) : super(key: key);

  @override
  State<RegisterEmployeePage> createState() => _RegisterEmployeePageState();
}

class _RegisterEmployeePageState extends State<RegisterEmployeePage> {
  final rucController = TextEditingController();
  final razonsocialController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  final usernameController = TextEditingController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();

  bool checkBoxValue=false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();
  bool _isVisible = false;
  bool _isVisible2 = false;

  Future SignUpRecruiter()async{
    try{
      var response= await http
          .post(Uri.parse('https://jobit-appmoviles.azurewebsites.net/api/v1/recruiter'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'username': usernameController.text,
            'firstname': firstnameController.text,
            'lastname': lastnameController.text,
            'email': emailController.text,
            'password': passwordController.text,
            'companyId': razonsocialController.text,
            'ruc': rucController.text
          })
      );
      if(response.statusCode==200){
        Navigator.pushNamed(context, 'login');
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Account created. Now Login"),
        ));
      }
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],

        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Text('Employee account!',
                      style: GoogleFonts.bebasNeue(
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(height: 20),
                    //username textfield--------------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: usernameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          hintText: 'Username',
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                        ),
                        validator: (value) {
                          if (value != null && value.length < 1) {
                            return 'This field cannot be empty';
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    //firstname textfield--------------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: firstnameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          hintText: 'First Name',
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                        ),
                        validator: (value) {
                          if (value != null && value.length < 1) {
                            return 'This field cannot be empty';
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    //lastname textfield--------------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: lastnameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          hintText: 'Last Name',
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                        ),
                        validator: (value) {
                          if (value != null && value.length < 1) {
                            return 'This field cannot be empty';
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    //ruc textfield--------------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: rucController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          hintText: 'R.U.C',
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                        ),
                        validator: (value) {
                          if (value != null && value.length < 1) {
                            return 'This field cannot be empty';
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    //razon social textfield-------------------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: razonsocialController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          hintText: 'Razon Social',
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                        ),
                        validator: (value) {
                          if (value != null && value.length < 1) {
                            return 'This field cannot be empty';
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    //email textfield-----------------------------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          hintText: 'Email',
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                        ),
                        validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Enter a valid email'
                            : null,
                      ),
                    ),
                    SizedBox(height: 10),
                    //password textfield---------------------------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible ? Icon(Icons.visibility,
                              color: Colors.grey,) : Icon(Icons.visibility_off,
                                color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value != null && value.length < 1) {
                            return 'This field cannot be empty';
                          }else if(value!.length < 6){
                            return 'Must be at least 6 characters';
                          }
                          else {
                            return null;
                          }
                        },
                        obscureText: !_isVisible,
                      ),
                    ),
                    SizedBox(height: 10),
                    //rewrite password----------------------------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: repasswordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white, width: 1),
                          ),
                          hintText: 'Repeat Password',
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible2 = !_isVisible2;
                              });
                            },
                            icon: _isVisible2 ? Icon(Icons.visibility,
                              color: Colors.grey,) : Icon(Icons.visibility_off,
                                color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value != null && value.length < 1) {
                            return 'This field cannot be empty';
                          }
                          else if (value != passwordController.text) {
                            return 'The passwords must be equals';
                          }
                          else {
                            return null;
                          }
                        },
                        obscureText: !_isVisible2,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: checkBoxValue,
                          onChanged: (value){
                            setState(() {
                              checkBoxValue=value!;
                            });
                          },
                        ),
                        const Text('I agree to the ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        GestureDetector(
                          onTap: () => {
                            Navigator.pushNamed(context, 'terms_conditions'),
                          },
                          child: Text(
                            'Terms and Conditions',
                            style: TextStyle(
                              color: Colors.orange.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
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
                            final isValidForm = formKey.currentState!.validate();
                            if (isValidForm) {
                              if(checkBoxValue==true){
                                SignUpRecruiter();
                              }
                            }
                          },
                          child: Container(
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

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}