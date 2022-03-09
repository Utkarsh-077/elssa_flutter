//import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            //key: _formKey,
            child: Column(
              children: [
                
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      
                      Padding(padding: EdgeInsets.all(20)),

                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                        child: Ink(
                          width: 400,
                          height: 50,
                          
                          //color: Colors.deepPurple,
                          child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Wrap(
                            
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Icon(Icons.g_mobiledata_outlined, color: Colors.white, size: 50.0,), // <-- Use 'Image.asset(...)' here
                                SizedBox(width: 12),
                                Text('Continue with google', style: TextStyle(color:Colors.white ),),
                              ],
                            ),
                          ),
                        ),

                      ),
                    
                    Padding(padding: EdgeInsets.all(10)),
                       Material(
                        
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                        child: Ink(
                          
                          width: 400,
                          height: 50,
                          
                          //color: Colors.deepPurple,
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Icon(Icons.facebook_rounded, color: Colors.white,size: 40.0,),//Image.asset("assets/images/facebook.png"),
                                SizedBox(width: 12),
                                Text('Continue with Facebook', style: TextStyle(color:Colors.white ),),
                              ],
                            ),
                          ),
                        ),

                      ),

                      
                      Padding(padding: EdgeInsets.all(10)),

                      Text("Or Continue with phone number"),

                      Padding(padding: EdgeInsets.all(10)),
                      IntlPhoneField(
                            decoration: InputDecoration(
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                ),
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                                print(phone.completeNumber);
                            },
                        ),

                      
                      Material(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                            //
                            //splashColor: Colors.white,
                          onTap: () => Navigator.pushNamed(context, "/home"),
                          child: AnimatedContainer(
                            height: 50,
                            width: 150,
                            alignment: Alignment.center,
                            child: Text("LOG IN", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                             duration: Duration(seconds: 1,),
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.all(10)),
                       Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                            //
                            //splashColor: Colors.white,
                          onTap: () => Navigator.pushNamed(context, "/otp"),
                          child: AnimatedContainer(
                            height: 40,
                            width: 200,
                            alignment: Alignment.center,
                            child: Text("forgot your password", style: TextStyle(
                              color: Colors.black,
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                             duration: Duration(seconds: 1,),
                          ),
                        ),
                      ),
                      

                      
                      
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}