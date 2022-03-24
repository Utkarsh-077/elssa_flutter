import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTP extends StatelessWidget {
  const OTP({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      
        body: SingleChildScrollView(
          child: Form(
            
            child: Column(
              children: [
                Image.asset(
                  "assets/images/otp.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Enter the OTP sent",
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
                      
                      Center(
                        child: OTPTextField(
                            length: 4,
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 50,
                            style: TextStyle(
                              fontSize: 20
                            ),
                            textFieldAlignment: MainAxisAlignment.center,
                            fieldStyle: FieldStyle.underline,
                            onCompleted: (pin) {
                              
                            },
                          ),
                      ),

                                            

                                    
                      SizedBox(
                        height: 40.0,
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
                            child:Text("VERIFY", style: TextStyle(
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
                          onTap: () => Navigator.pushNamed(context, "/"),
                          child: AnimatedContainer(
                            height: 20,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("SIGN UP", style: TextStyle(
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