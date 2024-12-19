// ignore_for_file: must_be_immutable, avoid_print, avoid_types_as_parameter_names

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmPasswordsController = TextEditingController();
  final _formKey = GlobalKey<
      FormState>();

  SignUpScreen({super.key}); // Global key for form _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.deepOrange.shade100,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        const Center(
                            child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        )),
                        const Center(
                          child: Text(
                            'Create your account',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                            validator: (String) {
                              if (_userNameController.text.isEmpty) {
                                return 'please Enter Your user Name';
                              }
                              return null;
                            },
                            controller: _userNameController,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.deepOrange)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange.shade100,
                                    )),
                                filled: true,
                                fillColor: Colors.deepOrange.shade100,
                                labelText: "User Name ",
                                hintText: "Enter your User Name ",
                                prefixIcon: const Icon(Icons.person))),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                            validator: (String) {
                              if (_userNameController.text.isEmpty) {
                                return 'please Enter Your Email ID';
                              }
                              return null;
                            },
                            controller: _emailController,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.deepOrange)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange.shade100,
                                    )),
                                filled: true,
                                fillColor: Colors.deepOrange.shade100,
                                labelText: "Email ID",
                                hintText: "Enter your Email ID ",
                                prefixIcon: const Icon(Icons.email))),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                            validator: (value) {
                              if (_passwordController.text.isEmpty) {
                                return 'please Enter Your password ';
                              }
                              return null;
                            },
                            controller: _passwordController,
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.deepOrange.shade100,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.deepOrange)),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(
                                      255,
                                      233,
                                      195,
                                      163,
                                    ),
                                  ),
                                  // borderSide:
                                  //     BorderSide(color: Colors.deepOrange)
                                ),
                                labelText: "Password",
                                hintText: "Enter your Password",
                                prefixIcon: const Icon(Icons.lock))),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                            validator: (value) {
                              if (_confirmPasswordsController.text.isEmpty) {
                                return 'please Enter Your Confirm Password ';
                              }
                              return null;
                            },
                            controller: _confirmPasswordsController,
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.deepOrange.shade100,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.deepOrange)),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(
                                      255,
                                      233,
                                      195,
                                      163,
                                    ),
                                  ),
                                  // borderSide:
                                  //     BorderSide(color: Colors.deepOrange)
                                ),
                                labelText: "Confirm Password",
                                hintText: "Enter your Confirm password",
                                prefixIcon: const Icon(Icons.lock))),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                            child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                              minimumSize: const Size(200, 60)),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print('Login Successful!');
                              String uUserName = _userNameController.text;
                              String uEmail = _emailController.text;
                              String uPassword = _passwordController.text;
                              String uConfirmPassword =
                                  _confirmPasswordsController.text;
                              print(
                                  "Username:$uUserName,Email:$uEmail,Password: $uPassword,ConfirmPassword: $uConfirmPassword");
                            } else {
                              print('Login Failed!');
                              String uUsername = _userNameController.text;
                              String uEmail = _emailController.text;
                              String uPassword = _passwordController.text;
                              String uConfirmPassword =
                                  _confirmPasswordsController.text;
                              print(
                                  "Username:$uUsername,Email:$uEmail,Password: $uPassword,ConfirmPassword: $uConfirmPassword");
                            }
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                            child: Text(
                          'Or',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: OutlinedButton.icon(
                            onPressed: () {
                              () {
                                if (_formKey.currentState!.validate()) {
                                  print('Login Successful!');
                                  String uUserName = _userNameController.text;
                                  String uEmail = _emailController.text;
                                  String uPassword = _passwordController.text;
                                  String uConfirmPassword =
                                      _confirmPasswordsController.text;
                                  print(
                                      "Username:$uUserName,Email:$uEmail,Password: $uPassword,ConfirmPassword: $uConfirmPassword");
                                } else {
                                  print('Login Failed!');
                                  String uUsername = _userNameController.text;
                                  String uEmail = _emailController.text;
                                  String uPassword = _passwordController.text;
                                  String uConfirmPassword =
                                      _confirmPasswordsController.text;
                                  print(
                                      "Username:$uUsername,Email:$uEmail,Password: $uPassword,ConfirmPassword: $uConfirmPassword");
                                }
                              };
                            },
                            icon: const Icon(Icons.g_mobiledata),
                            label: const Text(
                              'Login with google',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.deepOrange),
                              minimumSize: const Size(double.infinity, 40),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Sin Up',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepOrange),
                              )
                            ])),
                      ])))),
    );
  }
}
