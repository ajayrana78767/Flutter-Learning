import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  LoginScreen(
      {super.key}); // Global key for form _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20),
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
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Center(
                        child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    )),
                    Center(
                      child: Text(
                        'Enter your credential for login',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 80,
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
                            // border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              // borderSide:
                              //     BorderSide(color: Colors.deepOrange)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.deepOrange.shade100,
                                )),
                            filled: true,
                            fillColor: Colors.deepOrange.shade100,
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(10),
                            //       borderSide:
                            //           BorderSide(color: Colors.deepOrange)
                            // ),
                            labelText: "User Name ",
                            hintText: "Enter your User Name ",
                            prefixIcon: Icon(Icons.person))),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        validator: (value) {
                          if (_passwordController.text.isEmpty) {
                            return 'please Enter Your pasword';
                          }
                          return null;
                        },
                        controller: _passwordController,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            // border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.deepOrange.shade100,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
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
                            hintText: "Enter your password",
                            prefixIcon: Icon(Icons.lock))),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          minimumSize: Size(double.infinity, 60)),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('Login Successful!');
                          String uUsername = _userNameController.text;
                          String uPasswords = _passwordController.text;
                          print("Username: $uUsername,Passwords: $uPasswords");
                        } else {
                          print('Login Failed!');
                          String uUsername = _userNameController.text;
                          String uPasswords = _passwordController.text;
                          print("Username: $uUsername,Passwords: $uPasswords");
                        }
                      },
                      child: const Text(
                        'Login Now',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                        child: Text(
                      'Forgot Passwords',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepOrange),
                    )),
                    SizedBox(
                      height: 80,
                    ),
                    Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Text(
                            'Do not have an account.',
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
                  ]))),
    );
  }
}
