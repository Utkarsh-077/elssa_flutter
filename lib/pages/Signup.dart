import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signup extends StatelessWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Your home service expert",
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
                      
                      

                    Padding(padding: EdgeInsets.all(10)),
                      IntlPhoneField(
                      decoration: InputDecoration(
                    labelText: 'Phone Number',
        
                      ),
                initialCountryCode: 'IN',
    
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
                            child:Text("SIGN UP", style: TextStyle(
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
                          onTap: () => Navigator.pushNamed(context, "/login"),
                          child: AnimatedContainer(
                            height: 20,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("LOG IN", style: TextStyle(
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