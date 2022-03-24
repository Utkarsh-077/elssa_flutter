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
                Padding(padding: EdgeInsets.all(30)),
                Text(
                  "ELLSA",
                  style: TextStyle(
                    //fontStyle: FontStyle.italic,
                     fontSize: 28,
                   fontWeight: FontWeight.normal,
                  ),
                ),
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Your Home services Expert",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Continue with Phone Number",
                  
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
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
                        borderRadius: BorderRadius.circular(24),
                        child: InkWell(
                            //
                            //splashColor: Colors.white,
                          onTap: () => Navigator.pushNamed(context, "/home"),
                          child: AnimatedContainer(
                            height: 50,
                            width: 400,
                            alignment: Alignment.center,
                            child:Text("SIGN UP", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),),
                             duration: Duration(seconds: 1,),
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.all(4)),
                       Material(
                        color: Colors.white,
                       
                        child: InkWell(
                            //
                            //splashColor: Colors.white,
                          onTap: () => Navigator.pushNamed(context, "/login"),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text("View Other Option",
                        style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),),
                            
                          ),
                        ),
                      
                    SizedBox(height: 20,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [Text("ALREADY HAVE AN ACCOUNT? ", style: TextStyle(
                         fontSize: 16,
                         color: Colors.grey,
                         fontWeight: FontWeight.bold,

                       ),),
                      InkWell(
                        onTap: () => {},
                        child: Text("LOG IN", style: TextStyle(
                        color: Colors.blue,
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                      ),),)
                     ],),
                      
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}